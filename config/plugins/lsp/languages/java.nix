{
  config,
  lib,
  userSettings,
  pkgs,
  ...
}: {
  config = lib.mkMerge [
    (lib.mkIf config.frf.plugins.lsp.languages.java {
      plugins.jdtls = {
        enable = true;
        settings.cmd = [
          "java"
          "-data"
          "/home/${userSettings.username}/.cache/jdtls/workspace"
          "-configuration"
          "/home/${userSettings.username}/.cache/jdtls/config"
        ];
      };
    })

    (lib.mkIf (config.frf.plugins.lsp.languages.java && config.frf.plugins.lsp.treesitter) {
      plugins.treesitter.grammarPackages = [pkgs.tree-sitter-grammars.tree-sitter-java];
    })
  ];
}
