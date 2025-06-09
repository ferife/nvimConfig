{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.treesitter {
    plugins.treesitter = {
      enable = true;
      # folding = true;
      nixvimInjections = true; # Will color contents of extraConfigLua and other such injections as Lua
      # grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-comment];

      grammarPackages = config.plugins.treesitter.package.passthru.allGrammars;
    };
    plugins.treesitter-context = {
      enable = true;
      settings = {
        line_numbers = true;
      };
    };
  };
}
