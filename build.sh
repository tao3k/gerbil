#!/bin/sh
set -e
cd $(dirname "$0")

die() {
  echo "build failed"
  exit 1
}

if [ -e build-env.sh ]; then
    . ./build-env.sh
else
    echo "build-env.sh does not exist; did you run configure?"
    die
fi

case "${gerbil_aot_tools_flag:-}" in
    --enable-aot-tools) aot_tools=yes ;;
    --disable-aot-tools) aot_tools=no ;;
    *)
        case "$(uname -s)" in
            Darwin) aot_tools=yes ;;
            *) aot_tools=no ;;
        esac
        ;;
esac

# Keep the worker's AOT mode local to this build invocation.
(cd src && GERBIL_BUILD_AOT_TOOLS="$aot_tools" ./build.sh "$@") || die
