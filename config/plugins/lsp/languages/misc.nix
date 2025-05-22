{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.misc {
    plugins.csvview = {
      enable = true;
    };
  };
}
