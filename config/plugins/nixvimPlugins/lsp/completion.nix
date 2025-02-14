{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        completion = {
          documentation.auto_show = true;
          ghost_text.enabled = true;
        };
        # sources = {
        #   providers = {
        #     dictionary = {
        #       module = "blink-cmp-dictionary";
        #       name = "Dict";
        #       score_offset = 100;
        #       min_keyword_length = 3;
        #     };
        #   };
        #   default = [ "dictionary" ];
        # };
      };
    };
    friendly-snippets.enable = true;
  };
}
