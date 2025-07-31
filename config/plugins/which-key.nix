{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.which-key {
    plugins.which-key.enable = true;
  };
}
