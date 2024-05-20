# SPDX-License-Identifier: Apache-2.0

{
  description = "slothy";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";

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
        ortools = pkgs.python311Packages.buildPythonPackage {
            pname = "ortools";
            version = "9.7";
            src = pkgs.fetchurl {
                url = "https://files.pythonhosted.org/packages/2d/99/05949d19d6d8d69a391933b65dfc68b8bd0ede492e6f59e8da6fb444d81d/ortools-9.7.2996-cp311-cp311-macosx_11_0_arm64.whl";
                hash = "sha256-Oc8xz9iRuOiDyZBc85qlS57u0efP/f4cDpi2k9ZlCQI=";
            };
            format = "wheel";
            propagatedBuildInputs = [
                # ...
                pkgs.python311Packages.protobuf
            ];
        }; 
      in
        {
          devShells.default = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              inherit (pkgs)
                gcc-arm-embedded-13
                direnv
                nix-direnv
                python3
                openocd
                ;

                inherit (pkgs.python311Packages)
                pandas
                sympy
                pyserial
                ;

                ortools = ortools;
            };

            shellHook = ''
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
