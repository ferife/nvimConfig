{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.hardtime {
    plugins.hardtime.enable = true;
  };
}
