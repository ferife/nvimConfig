{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.lua {
      plugins.lsp.servers.lua_ls.enable = true;
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.lua && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-lua];
    })
  ];
}
