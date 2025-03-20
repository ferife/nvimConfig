{
  config,
  lib,
  ...
}: {
  options = {
    appearance = {
      colorscheme = lib.mkOption {
        type = with lib.types; uniq str;
        description = "Select a color scheme from the available options (everforest and onedark)";
        default = "onedark";
        example = "everforest";
      };
      rainbow-delimiters = lib.mkEnableOption "the ranbow delimiters plugin";
    };
  };

  config = lib.mkMerge [
    {
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
    (lib.mkIf config.appearance.rainbow-delimiters {
      plugins.rainbow-delimiters.enable = true;
    })

    # Colorschemes
    (lib.mkIf (config.appearance.colorscheme == "onedark") {
      colorschemes.onedark.enable = true;
    })
    (lib.mkIf (config.appearance.colorscheme == "everforest") {
      colorschemes.everforest = {
        enable = true;
        settings = {
          enable_italic = 1;
          dim_inactive_windows = 1;
          transparent_background = 1;
        };
      };
    })
    # WARN: Don't try to use the Tokyo Night theme. The stylix version makes reading stuff in the terminal difficult due to poor color choices
  ];
}
# TODO: Consider smear-cursor
# TODO: Set up a line length marker line at 80 characters

