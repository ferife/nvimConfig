{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.bash {
      plugins.lsp.servers.bashls.enable = true;
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.bash && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = with pkgs; [
        # vimPlugins.nvim-treesitter-parsers.awk
        # tree-sitter-grammars.tree-sitter-bash
        # tree-sitter-grammars.tree-sitter-regex
      ];
    })
  ];
}
