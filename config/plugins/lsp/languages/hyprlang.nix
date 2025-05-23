{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.hyprlang {
    plugins.lsp.servers.hyprls.enable = true;
  };
}
