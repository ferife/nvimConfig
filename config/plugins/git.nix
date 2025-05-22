{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.git {
    plugins = {
      gitsigns = {
        # enable = true;
        # settings.trouble = true;
        settings = {
          signs = {
            delete = {
              show_count = true;
            };
          };
        };
      };
    };
  };
}
