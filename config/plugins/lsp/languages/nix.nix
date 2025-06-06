{
  config,
  lib,
  userSettings,
  pkgs,
  ...
}: let
  nvimFlakePath = "/home/${userSettings.username}/Documents/Configs/nvimConfig/nvimConfig-main";
  nixFlakePath = "/home/${userSettings.username}/Documents/Configs/nixConfig/nixConfig-main";
in {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.nix {
      plugins.lsp.servers.nixd = {
        enable = true;
        cmd = ["nixd"];
        settings = {
          # nixpkgs.expr = "import <nixpkgs> { }";
          formatting.command = ["alejandra"];
          options = {
            nixvim.expr = ''(builtins.getFlake "${nvimFlakePath}").packages.$(system).neovimNixvim.options'';
            nixos.expr = ''(builtins.getFlake "${nixFlakePath}").nixosConfigurations.laptop.options'';
            home_manager.expr = ''(builtins.getFlake "${nixFlakePath}").nixosConfigurations.${userSettings.username}@laptop.options'';
          };
          # options = ''
          #   nixos = {
          #     expr = '(${builtins.getFlake "${nixFlakePath}"}).nixosConfigurations.laptop.options',
          #   },
          #   home_manager = {
          #     expr = '(${builtins.getFlake "${nixFlakePath}"}).homeConfigurations.${userSettings.username}@laptop.options',
          #   },
          # '';
        };
      };
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.nix && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-nix];
    })
  ];
}
