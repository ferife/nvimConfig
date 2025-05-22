{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.enable {
    plugins = {
      lsp = {
        enable = true; # Enables github:neovim/nvim-lspconfig
      };
      # TODO: lsp-format
    };
  };
}
