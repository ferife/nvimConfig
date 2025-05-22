{
  config,
  lib,
  pkgs,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.languages.yuck {
    extraPlugins = [pkgs.vimPlugins.yuck-vim];
  };
}
