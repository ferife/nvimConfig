{
  config,
  lib,
  ...
}: {
  options.frf.plugins.lsp = {
    enable = lib.mkEnableOption "language-dependent features";

    completion = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable auto completion";
    };
    treesitter = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "treesitter, a plugin that allows neovim and its plugins to parse the programming languages used";
    };
  };
}
