{
  colorschemes.everforest = {
    # enable = true;
    settings = {
      enable_italic = 1;
      dim_inactive_windows = 1;
      transparent_background = 1;
    };
  };
  colorschemes.onedark = {
    enable = true;
  };
  # WARN: Don't try to use the Tokyo Night theme. The stylix version makes reading stuff in the terminal difficult due to poor color choices
  plugins = {
    cursorline = {
      enable = true;
      settings = {
        cursorline.timeout = 500;
        cursorword.enable = false;
      };
    };
    indent-blankline = {
      enable = true;
      settings.scope.enabled = true;
    };
    lualine.enable = true;
    numbertoggle.enable = true;
    # rainbow-delimiters.enable = true;
    web-devicons.enable = true;
  };
}
# TODO: Consider smear-cursor

# TODO: Set up a line length marker line at 80 characters
