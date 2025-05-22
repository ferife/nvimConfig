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

  # TODO: Set up lazydev?
  # Plugin for making the writing of an nvim lua config easier
  # IDK how much it would help, since I use nixvim

  # TODO: Set up lsp-lines?
  # Plugin that renders diagnostics using virtual lines on top of the real line of code
  # View image of this at source page: https://git.sr.ht/~whynothugo/lsp_lines.nvim

  # TODO: Set up conform-nvim?
  # Plugin that allows setting of auto-formatters for my code
}
