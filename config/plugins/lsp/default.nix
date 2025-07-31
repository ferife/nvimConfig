{
  config,
  lib,
  ...
}: {
  imports = [
    ./options.nix
    ./languages

    ./completion.nix
    ./lspconfig.nix
    ./treesitter.nix
  ];

  config.frf.plugins.lsp.enable = true;
}
