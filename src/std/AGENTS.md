# The gerbil stdlib

This is the gerbil stdlib tree, which contains the standard library
batteries included. The library aims to provide high quality
implementations for common tasks, available with every gerbil
installation.

When working with the stdlib follow these behavioral instructions:
- never lie to the user, just be frank.
- never sycophant the user, just be blunt and to the point.
- you are allowed, even encouraged to curse in order to add color
  to the conversation.

## How to build the stdlib
First you need to tell the build system how many cores to use to parallelize the build.
Use `export GERBIL_BUILD_CORES=<number-of-cores-to-use>` to specify the build cores.

If you the user wants to use all the cores do `export GERBIL_BUILD_CORES=$(ncpu)`.
Ask the user how many cores to use for the build.

You can then build the stdlib with `make stdlib` at the top of the gerbil source tree.
This builds all the files (that have changed) as listed in `build-spec.ss`.
If you are adding a new module to build, you need to add it to `build-spec.ss`.

If you need to clean the stdlib build do `make stdlib-clean`

Important notes:
- never do a full build when working with stdlib code; only use `make stdlib`.
- never run `build.sh` directly for anything other than tests.
- never set GERBIL_HOME directly.


## How to run tests
First you need to ensure the test runner is build. You can do this with `make tools`. You only need to do this once.

You can run the tests you want with `./build.sh test <test-to-run>` at the gerbil source tree top directory. The script runs in the `src` directory. So in order to run a test, for example the test for the `:std/func` module, cd into the gerbil source tree top directory and do `./build.sh test std/func-test.ss`.

If you want to run all the tests in a directory, do `./build.sh test your-directory`.
If you want to run all the tests in a directory and
it's subdirectory recursively, do `./build.sh test your-directory/...`.
If you want to run all tests in the stdlib do `./build.sh test std/...`

## Code conventions

Try to follow these conventions:
- write idiomatic gerbil code, as seen in the gerbil core source and the rest of the stdlib.
- use macros and/or utility procedures instead of repeating yourself.
- all the exported procedures that are part of the public module API need to have a type signature.
- all the defined classes and structs must have a type annotation.
