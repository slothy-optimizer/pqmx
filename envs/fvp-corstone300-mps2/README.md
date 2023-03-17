# Exploring Arm v8.1-M + MVE with Arm<sup>&reg;</sup> Corstone&trade;-300 MPS2-based platform

## Overview

This directory provides a test environment for Arm v8.1-M based code using the freely available Fixed Virtual Platform (FVP) for the Corstone SSE-300
subsystem, which includes an Arm<sup>&reg;</sup> Cortex&trade;-M55 processor.

__Important:__ This test environment is testing of functional behaviour only: No cycle count estimates are provided.

## Usage

### As part of pqmx

This test environment is intended to be used from the top of the repository; see the
corresponding [README](../../README.md). In this case, the [`src`](src) directory will be populated with test files
through symlinks.

### Standalone

This directory can also be used in a standalone fashion using the provided makefile:

- `make` will compile and link the target image
- `make run` will run the target image in the FVP
- `make debug` will run the target image in the FVP with debugging enabled

When used in this way, all source files within the [`src`](src) directory will be compiled and linked, alongside the
necessary CMSIS bootcode.

### Choice of Compiler

By default, `make` will use Arm Compiler for compilation and linking. If you wish to use GCC instead, supply
`USE_GCC=1`, e.g. `make USE_GCC=1 run`.

## Installation

In order to use this test environment, the following software is needed:

- An MVE-aware toolchain, such as ARM Compiler 6.14 or higher, or the GNU Arm Embedded Toolchain version
  10-2020-q4-major or higher
- FVP for Corstone-300 MPS2 based platform
- CMSIS 5
- CMSIS pack for Corstone-300 MPS2 based platform

The following sections describe the setup for each of these in detail.

### Arm Compiler 6

- Download and unpack the latest version of Arm Compiler 6 from
[here](https://developer.arm.com/tools-and-software/embedded/arm-compiler/downloads/version-6).

- Use installation script to install Arm Compiler 6 in a location of your choice, for example
  a subdirectory of the [`tools`](../../../tools) directory in this repository. See the [Getting Started -> Installing
  Arm Compiler](https://developer.arm.com/documentation/100748/0615/Getting-Started/Installing-Arm-Compiler?lang=en)
  section in the Arm Compiler User Guide for more information.

- Either set `ARMC6_DIR` to the directory containing the Arm Compiler 6 binaries, or add it to your `PATH`.

### FVP for Corstone-300 MPS2 based platform

- Download and unpack FVP for Corstone-300 MPS2 based platform from
  [here](https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps):
  Select `Corstone-300 Ecosystem FVPs`, then `Download the FVP model for the Corstone-300 MPS2 based platform`.

- Use installation script to install FVP in a location of your choice, for example a subdirectory of the
  [`tools`](../../../tools) directory in this repository.

- Set the environment variable `FVP_CORSTONE300_MPS2_DIR` to the to the base directory of the installed FVP.

#### Arm Compiler via Arm Development Studio

Instead of downloading and installing the Arm Compiler manually, you can also acquire it as part of the [Arm Development
Studio](https://developer.arm.com/tools-and-software/embedded/arm-development-studio).

### GCC 10.1

- Download and install the [GNU Arm Embedded
  Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm) in
  a location of your choice, for example a subdirectory of the
  [`tools`](../../../tools) directory in this repository.

- Either set `GCC10_DIR` to the directory containing the Arm embedded GCC toolchain binaries, or add it to your `PATH`.

- To use GCC for compilation and linking, supply `USE_GCC=1` to invocations of `make` -- see above.

### CMSIS 5

- Clone CMSIS 5 from the [public GitHub repository](https://github.com/ARM-software/CMSIS_5) into a location of your
  choice, for example a subdirectory of the [`tools`](../../../tools) directory in this repository.

- Set the environment variable `CMSIS_BASE` to the base of the CMSIS repository.

### CMSIS Pack for Corstone-300 MPS2 based platform

- Download CMSIS pack from https://www.keil.com/dd2/arm/sse_300_mps2/

- Unpack CMSIS pack (e.g. using `unzip`, the pack is a zip archive) to a location of your choice,
  for example a subdirectory of the [`tools`](../../../tools) directory in this repository.

- Set the environment variable `CMSIS_PACK_CORSTONE300_MPS2_DIR` to the location of the unpacked
  CMSIS pack.
