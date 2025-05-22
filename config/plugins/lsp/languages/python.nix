{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.python {
    plugins.lsp.servers.pyright.enable = true;
  };
}
