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
    # enable = true;
    settings.style = "cool";
  };
  colorschemes.tokyonight = {
    enable = true;
    settings.style = "storm";
  };
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
    web-devicons.enable = true;
  };
}
# TODO consider the following appearance plugins
# twilight - dims inactive portions of code being edited
  # Has command to toggle
# smear-cursor
