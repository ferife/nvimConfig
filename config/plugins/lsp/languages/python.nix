{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.python {
      plugins.lsp.servers.pyright.enable = true;
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.python && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-python];
    })
  ];
}
