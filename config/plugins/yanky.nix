{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.which-key {
    plugins.yanky = {
      enable = true;
      settings = {
        highlight = {
          on_put = true;
          on_yank = true;
          timer = 500; # In Milliseconds
        };
      };
    };
  };
}
