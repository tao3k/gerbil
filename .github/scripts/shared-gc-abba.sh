#!/usr/bin/env bash
set -euo pipefail
state="${RUNNER_TEMP:?}/gerbil-shared-gc-pair"
work="$state/work"
install_root=/opt/gerbil
version=paired-shared
baseline=1f5afe22bb0d76d59b01400fea16969b22308172
candidate=d2fbaf013fe0bed48d290a28a32f1081f254e068
gambit=f1c787a000fbb50132af79a1bdf6c7610d430c9b
export GERBIL_BUILD_CORES="$(nproc)"
test "$GERBIL_BUILD_CORES" -eq 4

checkout() {
  local rev="$1"
  rm -rf -- "$work"
  git clone --quiet --no-hardlinks --no-checkout "${GITHUB_WORKSPACE:?}" "$work"
  cd "$work"
  git checkout --quiet --detach "$rev"
  test "$(git rev-parse HEAD)" = "$rev"
  git config submodule.src/gambit.url "$state/gambit.git"
  GIT_CONFIG_COUNT=1 GIT_CONFIG_KEY_0=protocol.file.allow GIT_CONFIG_VALUE_0=always \
    ./configure --prefix="$install_root" --version-string="$version" --with-gambit="$gambit" --enable-shared
  test "$(git -C src/gambit rev-parse HEAD)" = "$gambit"
  echo "(def (gerbil-version-string) \"git-$(git rev-parse --short=8 HEAD)\")" > src/gerbil/runtime/version.ss
  # Keep the common install directory but let stage1 derive the runtime version from Git.
  sed -i '/GERBIL_VERSION_STRING/d' build-env.sh
  ./build.sh prepare
}

case "${1:?}" in
  setup)
    mkdir "$state"
    test ! -e "$install_root/bin"
    test ! -e "$install_root/$version"
    sudo install -d -o "$(id -u)" -g "$(id -g)" "$install_root"
    lscpu | awk -F: '$1 ~ /^(Architecture|Model name|CPU\(s\))$/ {print}'
    gcc --version | head -1
    git -C "$GITHUB_WORKSPACE" diff --exit-code "$baseline" "$candidate" -- . ':!src/build.sh'
    git clone --quiet --mirror https://github.com/tao3k/gambit.git "$state/gambit.git"
    checkout "$baseline"
    ./build.sh gambit
    mkdir "$state/seed"
    cp -a build bootstrap "$state/seed/"
    (cd "$state/seed" && find build bootstrap -type f -print0 | sort -z | xargs -0 sha256sum) > "$state/gambit.sha256"
    sha256sum "$state/gambit.sha256"
    exit 0
    ;;
  ab-baseline|ba-baseline) rev="$baseline" ;;
  ab-candidate|ba-candidate) rev="$candidate" ;;
  report)
    cat "$state/results.tsv"
    test "$(wc -l < "$state/results.tsv")" -eq 4
    awk -F '\t' '$3 != 0 || $4 != 0 { fail=1 } END { exit fail }' "$state/results.tsv"
    exit 0
    ;;
  *) exit 2 ;;
esac

label="$1"
checkout "$rev"
cp -a "$state/seed/." .
sha256sum --quiet -c "$state/gambit.sha256"
test_rc=0
./build.sh boot-gxi
./build.sh stage0
./build.sh stage1

gcc_time="$state/$label.gcc"
baseline_cflags="$(env -u CORCXXFLAGS_GAMBUILD build/bin/gambuild-C CORCXXFLAGS_GAMBUILD)"
CORCXXFLAGS_GAMBUILD="$baseline_cflags -time=$gcc_time" python3 -u - "$label" <<'PY'
import subprocess
import sys
import time

start = time.monotonic()
handoff = None
child = subprocess.Popen(
    ["bash", ".github/scripts/stdlib-diagnostics.sh"],
    stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
)
for line in child.stdout:
    if handoff is None and line.startswith("... execute compile job "):
        handoff = time.monotonic()
    print(line, end="")
code = child.wait()
end = time.monotonic()
if code:
    sys.exit(code)
if handoff is None:
    sys.exit("Missing native handoff")
print(f"PAIR_PHASE {sys.argv[1]} frontend_s={handoff-start:.3f} native_s={end-handoff:.3f} total_s={end-start:.3f}")
PY

profile_rc=0
awk -v label="$label" '
  $3 == "cc1" {
    total += $1 + $2
    for (i = 4; i <= NF; i++) {
      if ($i ~ /(^|\/)ast~1[.]c$/) {
        printf "PAIR_AST %s user_s=%.6f sys_s=%.6f cpu_s=%.6f\n", label, $1, $2, $1+$2
        count++
        break
      }
    }
  }
  END {
    printf "PAIR_CC1 %s total_cpu_s=%.6f\n", label, total
    exit (count != 1)
  }
' "$gcc_time" || profile_rc=$?

./build.sh libgerbil
./build.sh lang
./build.sh tools
unset GERBIL_BUILD_CORES
./install.sh
(PATH=/opt/gerbil/bin:$PATH gxtest -q src/gerbil/test/... src/std/... src/lang/... src/tools/...) || test_rc=$?
printf 'PAIR_TEST %s %s exit=%s\n' "$label" "$rev" "$test_rc"
printf '%s\t%s\t%s\t%s\n' "$label" "$rev" "$test_rc" "$profile_rc" >> "$state/results.tsv"
# Only remove the dedicated install that this disposable hosted job created.
rm -rf -- "$install_root/$version"
