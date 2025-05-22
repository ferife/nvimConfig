{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.nvim-ufo {
    plugins.nvim-ufo.enable = false;
  };
}
