# Gerbil MCP In This Checkout

The repository provides [gerbil-mcp.sh](gerbil-mcp.sh) to run
[gerbil-mcp](https://git.cons.io/ober/gerbil-mcp) against this checkout's Gerbil build.
Once a local build is available, the wrapper selects it rather than an unrelated
installed Gerbil. This helps avoid compiler/library version mismatches when MCP tools
inspect or check source from this checkout.

Configure your MCP client to launch the wrapper as a local stdio server, using its
absolute path or `./gerbil-mcp.sh` from the checkout root. This is not an HTTP server.
Keep wrapper stdout reserved for MCP traffic; use stderr or client logs for diagnostics.

**Environment selection happens when the MCP server starts, not on each tool call.**
Building Gerbil does not reconfigure an already-running MCP process. Restart that
process after the first successful repository build if it was using an installed runtime.

## Prerequisites

- Make `gerbil-mcp` available on the PATH inherited by your MCP client.
  The repository wrapper does not install or build the MCP server itself. See the
  [MCP repository](https://git.cons.io/ober/gerbil-mcp) for its installation instructions.
- Before this checkout has been built, provide a working installed Gerbil environment
  compatible with your MCP installation. The fallback is useful for initial setup;
  it is not a guarantee that an older installation can expand newer checkout source.
- Follow [AGENTS.md](AGENTS.md) for build approval, build order and editing checks.
  For stdlib work, also read [src/std/AGENTS.md](src/std/AGENTS.md).

## Wrapper Selection

The wrapper resolves its own checkout directory and makes this decision at startup:

| Condition | Invocation |
| --- | --- |
| `build/bin/gxi` is executable | Export `GERBIL_HOME=<checkout>/build`, then execute `run.sh gerbil-mcp` |
| No executable `build/bin/gxi` | Execute `gerbil-mcp` in the caller's installed environment |

Both paths forward arguments unchanged and use `exec`, without leaving an extra shell
between the client and the MCP server.

In build mode, [run.sh](run.sh) establishes the normal checkout build environment:

- `GERBIL_SOURCE` points to `src`, and `GERBIL_STAGE0` to `bootstrap`.
- `GERBIL_BUILD_PREFIX` points to `build`, `GERBIL_GSC` to `build/bin/gsc`, and
  `GERBIL_LOADPATH` to `build/lib`.
- PATH starts with `build/bin` and `bootstrap/bin` so subprocesses use local `gxi`/`gxc`.
- `GAMBOPT` selects the build's Gambit directories, and dynamic-library paths include
  `build/lib`.
- Existing `build-env.sh` settings are sourced by `run.sh`.

`run.sh` itself does not set `GERBIL_HOME`; the MCP wrapper explicitly sets it in
build mode so tools that use that variable agree with the selected executables and
load path. In fallback mode the wrapper does not change it or the other inherited
environment settings. This wrapper behavior is not an instruction to manually set
`GERBIL_HOME` for ordinary repository builds or tests; continue using the build scripts
and `./run.sh` as documented in AGENTS.md.

The availability check is deliberately small. An executable `build/bin/gxi` does NOT
prove that stdlib/tools have finished building, that artifacts match the current branch,
or that a native MCP executable was built against a compatible runtime. The wrapper
does not rebuild, repair artifacts, or fall back after a build-mode startup failure.

## Checkout And Restart Workflow

1. On a fresh checkout, install the prerequisites and configure your client to launch
   the wrapper for that checkout.
   With no local build, a newly started MCP process uses the installed environment.
2. Build Gerbil using the repository's approved build workflow. Do not use MCP checks
   against partially rebuilt artifacts as evidence that source is invalid. After a
   stage1 rebuild, complete any required stdlib and tools builds sequentially.
3. If MCP was using the installed runtime before the build, restart its process after
   the build completes. The new MCP process now selects the build.
4. Verify the server and runtime before resuming checks or implementation work.

Restart MCP after wrapper changes, core/runtime rebuilds, or switching to a branch with
different build artifacts. Finish any required rebuilds before restarting; restarting
cannot repair partial artifacts. Ordinary source edits
do not require an environment-selection restart. After a stdlib rebuild, fresh subprocesses
can see new artifacts, but persistent REPL sessions or loaded modules may be stale;
recreate those sessions or restart MCP.

Each Git worktree has its own wrapper and build directory. A running server from another
worktree does not automatically switch when you change branches or directories elsewhere.

## Verification And Troubleshooting

From the checkout root:

```sh
command -v gerbil-mcp
test -x ./gerbil-mcp.sh
sh -n gerbil-mcp.sh run.sh
```

After restart, ask the connected MCP server to run `gerbil_version` and
`gerbil_preflight_check`, and confirm the reported runtime/install paths correspond
to this checkout's build. Tool names can vary with the MCP server's tool-exposure mode.
For a direct subprocess path check when a build is present:

```sh
./run.sh sh -c 'command -v gxi; command -v gxc'
```

That last command verifies `run.sh`'s executable search path; it does not inspect the
environment of an already-running MCP process or exercise the wrapper's separate
`GERBIL_HOME` assignment.

- **Wrapper not found:** check the configured path and working directory, and confirm
  the script is executable. Restart after correcting the config.
- **`gerbil-mcp` not found:** install it or correct the client's inherited PATH. The
  wrapper's build mode selects Gerbil, not a separately downloaded MCP installation.
- **Older compiler or unbound generated bindings:** confirm which named MCP server
  answered, check for an old running server or duplicate global entry, and verify
  that the build completed. Follow the syntax-check fallback in AGENTS.md rather
  than changing otherwise valid source to satisfy an incompatible tool runtime.
- **Failure immediately after checkout/build:** the build may be partial or stale.
  Restarting cannot repair artifacts, and the wrapper's executable check cannot
  certify them. Check for active builders before any rebuild or cleanup.
- **Native MCP/runtime mismatch:** environment variables do not rebuild a compiled
  MCP executable. A compatible MCP build may still be needed; report the actual
  startup/tool error instead of claiming that path selection solves every mismatch.

Never put credentials or machine-specific secrets in committed client configuration.

## Client Configuration

### Pi

[Pi](https://pi.dev) uses an extension for MCP support. Install Pi following its
[upstream instructions](https://github.com/badlogic/pi-mono/tree/main/packages/coding-agent),
then install [pi-mcp-extension](https://github.com/irahardianto/pi-mcp-extension):

```sh
pi install npm:pi-mcp-extension
```

Review third-party extensions before installing: they execute with your user's
permissions. This command installs the extension in your user configuration; the
repository does not vendor it or automatically install it.

The committed [.pi/mcp.json](.pi/mcp.json) configures the checkout wrapper:

```json
{
  "mcpServers": {
    "gerbil": {
      "command": "./gerbil-mcp.sh",
      "lifecycle": "eager"
    }
  }
}
```

Start `pi` from the checkout root, with `gerbil-mcp` on its inherited PATH.
The extension defaults to stdio transport; `eager` starts the server at session
startup and exposes its tools directly to the model. The JSON file alone does not
provide MCP support without the extension. Review and approve Pi's project trust
prompt when applicable.

In the active session:

- `/mcp` shows configured server status.
- `/mcp gerbil` shows connection details and server stderr.
- `/mcp:stop gerbil`, followed by `/mcp:start gerbil`, restarts the server with
  the unchanged configuration, including rerunning the wrapper's runtime selection.

Restart Pi after installing the extension or changing `.pi/mcp.json`. Restart the
MCP server after the first successful checkout build if it started in fallback mode,
and follow the branch/build restart guidance above. Ask the connected Gerbil tools
to perform the runtime verification in [Verification And Troubleshooting](#verification-and-troubleshooting);
a connected status alone does not prove runtime compatibility.

The extension merges `~/.pi/agent/mcp.json` with the project configuration by server
name, replacing matching server entries. A global server under a different name
can still run alongside `gerbil`; check for unwanted duplicates. Tool names normally
have the prefix `mcp_gerbil_`, for example `mcp_gerbil_gerbil_eval`; available names
also depend on the MCP server's exposure mode.

This configuration supplies MCP connectivity only. It neither selects a model nor
grants permission to build, commit or push. Continue following [AGENTS.md](AGENTS.md)
and the stdlib instructions where applicable. Keep personal credentials, session
logs and installed package directories out of committed `.pi/` configuration.

### OpenCode

The repository's [opencode.json](opencode.json) starts the wrapper with this configuration:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "gerbil": {
      "type": "local",
      "command": ["./gerbil-mcp.sh"]
    }
  }
}
```

Start OpenCode from the checkout root. The configured command is relative to that
working directory, so it must resolve `./gerbil-mcp.sh` there. The `gerbil-mcp` executable
must be available on the PATH inherited by OpenCode.

`gerbil` is the OpenCode server name; `gerbil-mcp` is the executable launched by the
wrapper. Project configuration is merged with global OpenCode configuration, not a
wholesale replacement. The project overrides matching settings for a server also named
`gerbil`. A globally configured server named `gerbil-mcp` is a DIFFERENT entry and can
remain active alongside it. Check for duplicate servers and disable the unwanted entry
in your configuration. Inherited environment settings also deserve inspection; do not
assume a project command override clears every global setting.

**Restart OpenCode after adding or changing its configuration, and after the first
successful repository build if OpenCode was already running in fallback mode.**

If your OpenCode version offers a way to stop and reconnect a local MCP server, that
can rerun an unchanged configured wrapper. It is not a substitute for reloading a
changed OpenCode configuration. The installed CLI's `opencode mcp` commands do not
include a general `restart` command; do not assume one exists. For an attached client,
restart the OpenCode server process that owns MCP, not merely the terminal UI connection.

From the checkout root, check the configured connection with:

```sh
opencode mcp list
```

A separate `opencode mcp list` invocation checks that invocation's configuration and
connections; it does not prove an older, already-running OpenCode session has reloaded
its config or restarted its MCP server. In the active session, ask the server named
`gerbil` to perform the runtime verification described above.

The project configuration sets up MCP only. It does not choose a model, grant build
permission, or replace the repository's editing instructions. See the upstream
[OpenCode MCP documentation](https://opencode.ai/docs/mcp-servers/) and
[configuration documentation](https://opencode.ai/docs/config/) for other options.
