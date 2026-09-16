#!/bin/sh

# Run gerbil-mcp against the Gerbil build in this checkout when available.
# Fall back to the caller's installed Gerbil environment before the
# repository has been built.

set -eu

readonly GERBIL_BASE="$(cd "$(dirname "$0")"; pwd -P)"

if [ -x "${GERBIL_BASE}/build/bin/gxi" ]; then
    # MCP also uses GERBIL_HOME to locate the runtime and its libraries.
    GERBIL_HOME="${GERBIL_BASE}/build"
    export GERBIL_HOME
    # run.sh establishes the environment for this checkout's build.
    exec "${GERBIL_BASE}/run.sh" gerbil-mcp "$@"
else
    # No repository build yet. Use the Gerbil installation/environment
    # from which OpenCode was started.
    exec gerbil-mcp "$@"
fi
