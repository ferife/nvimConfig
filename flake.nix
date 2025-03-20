{
  description = "Fernando's nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    let
      userSettings = {
        username = "fernandorf";
      };
      systemSettings = {
        flake = "/home/${userSettings.username}/Documents/Configs/nvimConfig/nvimConfig-main";
      };
    in
      flake-parts.lib.mkFlake { inherit inputs; } {
        systems = [
          "x86_64-linux"
          "aarch64-linux"
          "x86_64-darwin"
          "aarch64-darwin"
        ];

        perSystem =
          { system, pkgs, self', lib, ... }:
          let
            nixvimLib = nixvim.lib.${system};
            nixvim' = nixvim.legacyPackages.${system};
            nixvimModule = {
              # inherit pkgs;
              inherit system; # or alternatively, set `pkgs`
              module = import ./config; # import the module directly
              # You can use `extraSpecialArgs` to pass additional arguments to your module files
              extraSpecialArgs = {
                inherit userSettings;
                inherit systemSettings;
              };
            };
            nvim = nixvim'.makeNixvimWithModule nixvimModule;
          in
            {
            checks = {
              # Run `nix flake check .` to verify that your config is not broken
              default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
              # default = nixvimLib.check.mkTestDerivationFromNixvimModule {
              #   inherit nvim;
              #   name = "nixvim configuration";
              # };
            };

            packages = {
              # Lets you run `nix run .` to start nixvim
              default = nvim;
            };
          };
      };
}
