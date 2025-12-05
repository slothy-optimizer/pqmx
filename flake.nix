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
        in
        {
          devShells.default = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              libopencm3 = libopencm3;
              mbed-os = mbed-os;
              cmsis_5 = cmsis_5;

              inherit (pkgs.python311Packages)
                pyserial;
              inherit (pkgs)
                direnv
                nix-direnv
                openocd
                coreutils
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
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
