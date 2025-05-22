{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.bash {
    plugins.lsp.servers.bashls.enable = true;
  };
}
