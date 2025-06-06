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
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-bash];
    })
  ];
}
