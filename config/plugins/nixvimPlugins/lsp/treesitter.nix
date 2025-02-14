{
  plugins.treesitter = {
    enable = true;
    # folding = true;
    nixvimInjections = true;  # Will color contents of extraConfigLua and other such injections as Lua
  };
  plugins.treesitter-context = {
    enable = true;
    settings = {
      line_numbers = true;
    };
  };
}
