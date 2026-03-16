{
  config,
  lib,
  userSettings,
  pkgs,
  ...
}: let
  nvimFlakePath = "/home/${userSettings.username}/Documents/Configs/nvimConfig/nvimConfig-main";
  nixFlakePath = "/home/${userSettings.username}/Documents/Configs/nixConfig/nixConfig-main";
  nixFlake = ''(builtins.getFlake ${nixFlakePath})'';
  nvimFlake = ''(builtins.getFlake ${nvimFlakePath})'';
in {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.nix {
      plugins.lsp.servers.nixd = {
        enable = true;
        settings = {
          nixpkgs.expr = "import ${nixFlake}.inputs.nixpkgs { }";
          formatting.command = ["${lib.getExe pkgs.alejandra}"];
          options = {
            nixos.expr = ''${nixFlake}.nixosConfigurations.fernandorf.options'';
            nixvim.expr = ''${nvimFlake}.packages.${pkgs.system}.default.options'';
          };
        };
      };
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.nix && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-nix];
    })
  ];
}
