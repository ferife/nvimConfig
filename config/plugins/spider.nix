{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.spider {
    plugins.spider = {
      enable = true;
      keymaps.motions = {
        b = "b";
        e = "e";
        ge = "ge";
        w = "w";
      };
    };
  };
}
