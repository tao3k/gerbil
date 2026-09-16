# The Gerbil source repository

This is the Gerbil source tree; it contains the sources for the entire Gerbil distribution.

When working with the Gerbil source tree follow these behavioral instructions:
- never lie to the user, just be frank.
- never sycophant the user, just be blunt and to the point.
- you are allowed to curse in order to add color to the conversation.

### Gerbil MCP

The MCP tool for gerbil is here: https://git.cons.io/ober/gerbil-mcp
You are _strongly_ encouraged to use it; in fact the editing protocol below requires it.

## Gerbil editing protocol

When modifying Gerbil source code:

Before the first edit to each file, run the gerbil-mcp balance check on the
unedited file to establish a passing baseline. If it fails, STOP before editing
and report the failure; do not repair inherited code as part of an unrelated task.

1. Make the smallest edit that accomplishes the requested change.

2. IMMEDIATELY after every edit to a Gerbil source file, run the
   gerbil-mcp balance check on the modified file/range.

3. If the balance check fails:
   - STOP.
   - Do not compile.
   - Do not make unrelated edits.
   - Do not attempt to repair surrounding code.
   - Re-read the exact region you just modified.
   - Fix ONLY the edit that introduced the imbalance.
   - Run balance check again.
   - Repeat until balanced.

4. Once balance check passes, run the gerbil-mcp syntax check.

   Distinguish a source syntax error from a tool/environment failure. If MCP
   cannot check the source because its runtime is incompatible with this
   checkout, report the blocker and use checkout-local syntax expansion through
   `./run.sh gxi` instead. The fallback must check the modified forms in their
   module/macro context; merely reading them or checking an unrelated snippet
   is not sufficient. If neither checker can run, STOP and report the blocker.

5. If syntax check fails:
   - treat the most recent edit as the likely cause;
   - inspect the smallest relevant region;
   - make the smallest possible correction;
   - run balance check again;
   - then run syntax check again.

6. Only after BOTH balance check and syntax check (MCP or the checkout-local
   fallback above) pass may you:
   - continue to another edit;
   - compile the code;
   - run tests;
   - consider the task complete.

NEVER continue working from structurally unbalanced Gerbil source.
NEVER try to fix a balance error by guessing at parentheses elsewhere
in the file.

### Critical invariant

Before the first edit, a passing balance check establishes the baseline. Each
subsequent edit starts from the previous edit's passing balance and syntax checks.

Therefore, treat a balance-check failure immediately after your edit as caused
by YOUR EDIT. If concurrent changes or a scanner limitation prevent attributing
the failure, STOP and report the discrepancy rather than guessing at repairs.

Do not search the rest of the file for an existing problem.
Undo or repair only the change you just made.

## Build Instructions
### How to do a full build
Do this only once initially, you can work with incremental builds afterwards.
Ask the user first if they want a full build.

In this directory:
```
./configure --prefix=<gerbil-installation-prefix>
make -j<number-of-cores>
```

Ask the user if they want a non-default configuration prefix, and omit the argument if the user is fine with the default.
Ask the user how many cores they want for the build, you can default to all system cores.

### How to do an incremental build
If you made changes in core:
```
GERBIL_BUILD_CORES=<number-of-cores> make stage1
```

If you made changes in stdlib:
```
GERBIL_BUILD_CORES=<number-of-cores> make stdlib
```

A stage1 rebuild may require rebuilding stdlib and tools before testing. Run
dependent builds sequentially: stage1, then stdlib, then tools. Never run concurrent
builders in the same build tree; check that no previous builder is still running
before starting another, including after a timeout or interrupted build.

### How to run tests
Use `./build.sh test gxtest-arguments ...`

To run a specific test file:
```
./build.sh test <your-test-file>
```
where the test file path is relative to the `src` directory.

To run all tests recursively in a directory:
```
./build.sh test the-directory/...
```

If you only edited test files, you don't need to rebuild.

## Running a build-local gxi

If you need to use `gxi` in the build environment, use the `run.sh`
script at the top of the Gerbil source tree. For a REPL, run `./run.sh`;
it runs `gxi` by default with the appropriate environment variables.
For `gxi` usage with arguments, use `./run.sh gxi arg ...`.

## Working with the stdlib

See the stdlib [AGENTS.md](src/std/AGENTS.md) for instructions.
