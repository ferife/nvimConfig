{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.c {
      plugins.lsp.servers = {
        asm_lsp.enable = true;
        ccls.enable = true;
      };
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.c && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = with pkgs.tree-sitter-grammars; [
        # tree-sitter-asm
        # tree-sitter-c
      ];
    })
  ];
}
