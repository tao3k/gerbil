#!/usr/bin/env bash
# Stream samples before a runner failure can prevent artifact upload.
set -euo pipefail

diagnostic_dir="$(mktemp -d "${RUNNER_TEMP:-${TMPDIR:-/tmp}}/gerbil-stdlib.XXXXXXXX")"
log="$diagnostic_dir/build.log"
fifo="$diagnostic_dir/build.fifo"
touch "$log"
mkfifo "$fifo"
echo "[stdlib diagnostics] requested_cores=${GERBIL_BUILD_CORES:?} available_cpus=$(nproc) Gambit=$(git -C src/gambit rev-parse HEAD)"
cgroup=
if [[ -r /proc/self/cgroup ]]; then
  cgroup_path="$(awk -F: '$1 == "0" { print $3; exit }' /proc/self/cgroup)"
  if [[ -n "$cgroup_path" && -r "/sys/fs/cgroup$cgroup_path/memory.current" ]]; then
    cgroup="/sys/fs/cgroup${cgroup_path%/}"
    echo "[stdlib diagnostics] memory cgroup=$cgroup"
  fi
fi

# Read one process table per sample. Counts are live processes under the
# build, so separate the frontend, GSC, and C compiler rather than adding
# them together as if they were independent Gerbil workers.
process_sample() {
  ps -e -o pid=,ppid=,rss=,comm= | awk -v root="$1" '
    { parent[$1]=$2; rss[$1]=$3; name[$1]=$4 }
    END {
      for (pid in parent) {
        p=pid
        while (p != root && p in parent && parent[p] != p)
          p=parent[p]
        if (p != root)
          continue
        count++
        total += rss[pid]
        sub(/^.*\//, "", name[pid])
        if (name[pid] ~ /^(gerbil|gxi|gxc)$/) frontend++
        if (name[pid] == "gsc") gsc++
        if (name[pid] ~ /^(cc1|cc1plus|clang|as)$/) native++
      }
      printf "%d %d %d %d %d\n", count, total, frontend, gsc, native
    }'
}

peak_rss=0
peak_frontend=0
peak_gsc=0
peak_native=0
sample() {
  local counts processes rss frontend gsc native host mem='' key value
  counts="$(process_sample "$build_pid")" || return 1
  read -r processes rss frontend gsc native <<< "$counts"
  if (( rss > peak_rss )); then peak_rss=$rss; fi
  if (( frontend > peak_frontend )); then peak_frontend=$frontend; fi
  if (( gsc > peak_gsc )); then peak_gsc=$gsc; fi
  if (( native > peak_native )); then peak_native=$native; fi

  host=''
  if [[ -r /proc/meminfo ]]; then
    host="$(awk '/^(MemAvailable|SwapFree):/ {
      sub(/:$/, "", $1); printf " %s_KiB=%s", $1, $2
    }' /proc/meminfo)"
  fi
  if [[ -r /proc/vmstat ]]; then
    host+="$(awk '$1 == "oom_kill" { printf " host_oom_kill=%s", $2 }' /proc/vmstat)"
  fi
  if [[ -n "$cgroup" ]]; then
    for key in memory.current memory.peak memory.max; do
      if [[ -r "$cgroup/$key" ]] && read -r value < "$cgroup/$key"; then
        mem+=" $key=$value"
      fi
    done
    if [[ -r "$cgroup/memory.events" ]]; then
      while read -r key value; do
        mem+=" memory.events.$key=$value"
      done < "$cgroup/memory.events"
    fi
  fi
  printf '[stdlib diagnostics] elapsed_s=%s processes=%s frontend=%s gsc=%s native=%s tree_rss_KiB=%s sampled_tree_peak_KiB=%s peak_frontend=%s peak_gsc=%s peak_native=%s%s%s\n' \
    "$SECONDS" "$processes" "$frontend" "$gsc" "$native" "$rss" "$peak_rss" \
    "$peak_frontend" "$peak_gsc" "$peak_native" "$host" "$mem"
  local last
  last="$(grep -F '... execute compile job ' "$log" | tail -n 1 || true)"
  printf '[stdlib diagnostics] last_dispatched=%s\n' "${last:-unobserved}"
}

tee "$log" < "$fifo" &
log_pid=$!
./build.sh stdlib > "$fifo" 2>&1 &
build_pid=$!
trap 'kill -TERM "$build_pid" 2>/dev/null || true; exit 143' TERM
trap 'kill -INT "$build_pid" 2>/dev/null || true; exit 130' INT
while kill -0 "$build_pid" 2>/dev/null; do
  sample || echo "[stdlib diagnostics] sample unavailable"
  sleep 10
done
result=0
wait "$build_pid" || result=$?
wait "$log_pid" || echo "[stdlib diagnostics] build log incomplete"
rm -f -- "$fifo"
sample || echo "[stdlib diagnostics] final sample unavailable"
echo "[stdlib diagnostics] build_exit=$result"
exit "$result"
