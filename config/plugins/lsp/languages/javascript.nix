{
  config,
  lib,
  userSettings,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.javascript {
      plugins.lsp.servers.ts_ls.enable = true;
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.javascript && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [
        # pkgs.tree-sitter-grammars.tree-sitter-css
        # pkgs.tree-sitter-grammars.tree-sitter-scss
        # pkgs.tree-sitter-grammars.tree-sitter-html
        # pkgs.tree-sitter-grammars.tree-sitter-javascript
      ];
    })
  ];
}
