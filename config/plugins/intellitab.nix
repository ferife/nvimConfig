{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.intellitab {
    plugins.intellitab.enable = true;
  };
}
