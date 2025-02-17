{
  plugins = {
    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;
      settings = {
        completion = {
          documentation.auto_show = true;
          ghost_text.enabled = true;
        };
        # sources = {
        #   providers = {
        #     module = "blink-ripgrep";
        #     name = "Ripgrep";
        #     opts = {
        #       async = true;
        #       fallback_to_regex_highlighting = true;
        #       search_casing = "--ignore-case";
        #     };
        #   };
        #   default = [
        #     "lsp"
        #     "path"
        #     "luasnip"
        #     "buffer"
        #     "ripgrep"
        #   ];
        # };
      };
    };
    friendly-snippets.enable = true;
  };
  # TODO Set up blink-cmp-dictionary
  # TODO Set up blink-ripgrep
}
