{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.misc {
      plugins.csvview.enable = true;
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.misc && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [
        # pkgs.vimPlugins.nvim-treesitter-parsers.csv
        # pkgs.vimPlugins.nvim-treesitter-parsers.editorconfig
      ];
    })
  ];
}
