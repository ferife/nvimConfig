{
  config,
  lib,
  ...
}: {
  options.frf.plugins.lsp.languages = {
    bash = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable bash support";
    };
    java = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable java support";
    };
    lua = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable lua support";
    };
    markdown = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = config.frf.plugins.lsp.enable;
        description = "Whether to enable markdown support";
      };

      obsidian = lib.mkOption {
        type = lib.types.bool;
        default = config.frf.plugins.lsp.markdown.enable;
        description = "Whether to enable obsidian support";
      };
    };
    nix = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable nix support";
    };
    python = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable python support";
    };
    yuck = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable yuck support";
    };

    misc = lib.mkOption {
      type = lib.types.bool;
      default = config.frf.plugins.lsp.enable;
      description = "Whether to enable support for miscellaneous languages and file types";
    };
  };
}
