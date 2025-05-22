{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.which-key {
    plugins.which-key.enable = true;
    # TODO: Look back at the docs on plugins.which-key.settings.spec
  };
}
