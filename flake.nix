# SPDX-License-Identifier: Apache-2.0

{
  description = "pqmx";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

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
        in
        {
          devShells.default = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              libopencm3 = libopencm3;
              mbed-os = mbed-os;
              inherit (pkgs)
                gcc-arm-embedded-13
                direnv
                nix-direnv
                openocd
                qemu
                ;
            };
            OPENCM3_DIR = ''${libopencm3}'';
            MBED_OS_DIR = ''${mbed-os}'';
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
