{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.lua {
    plugins.lsp.servers.lua_ls.enable = true;
  };
}
