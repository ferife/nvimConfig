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
}
