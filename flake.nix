# SPDX-License-Identifier: Apache-2.0

{
  description = "pqmx";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, ... }:
        let
          libopencm3 = pkgs.callPackage ./libopencm3.nix {
            targets = [ "stm32/f4" "stm32/f7" ];
          };
          mbed-os = pkgs.callPackage ./mbed-os.nix {
            targets = [ "mps2_m4" "mps2_m7" ];
          };
          cmsis_5 = pkgs.callPackage ./cmsis_5.nix { };
          # Minimal STM32CubeN6 platform tree for the nucleo-n657x0-q env. The
          # package's setupHook exports NUCLEO_N657X0_Q_PATH, consumed by
          # envs/nucleo-n657x0-q/Makefile.
          stm32cuben6 = pkgs.callPackage ./stm32cuben6.nix { };
          # OpenOCD snapshot with STM32N6 target support, used by the
          # nucleo-n657x0-q hardware flash flow.
          st-openocd = pkgs.callPackage ./st-openocd.nix { };
        in
        {
          packages = {
            inherit stm32cuben6 st-openocd;
          };

          devShells.default = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              libopencm3 = libopencm3;
              mbed-os = mbed-os;
              cmsis_5 = cmsis_5;
              # Provides NUCLEO_N657X0_Q_PATH via its setupHook so the
              # nucleo-n657x0-q env can be built (and check'd) in CI without a
              # board. The hardware flash flow lives in the dedicated devShell.
              stm32cuben6 = stm32cuben6;

              inherit (pkgs.python311Packages)
                pyserial;
              inherit (pkgs)
                direnv
                nix-direnv
                openocd
                coreutils
                python3
                qemu
                gcc-arm-embedded
                git # TODO: remove
                clang-tools
                ;
            };
            shellHook = ''
              export PATH=$PWD/scripts:$PATH
            '';
            OPENCM3_DIR = ''${libopencm3}'';
            MBED_OS_DIR = ''${mbed-os}'';
            CMSIS_5_DIR = ''${cmsis_5}'';
          };

          # Hardware flash/run shell for the NUCLEO-N657X0-Q board. Adds the
          # patched OpenOCD (target/stm32n6x.cfg) on top of the toolchain, GDB
          # and python provided by gcc-arm-embedded / python3. The FLEXMEM +
          # GDB RAM-load flow is driven by envs/nucleo-n657x0-q/host/.
          devShells.nucleo-n657x0-q = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              # stm32cuben6 exports NUCLEO_N657X0_Q_PATH via its setupHook.
              stm32cuben6 = stm32cuben6;
              st-openocd = st-openocd;

              inherit (pkgs)
                coreutils
                python3
                gcc-arm-embedded
                git
                ;
            };
            shellHook = ''
              export PATH=$PWD/scripts:$PATH
            '';
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
