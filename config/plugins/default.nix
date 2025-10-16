{
  config,
  lib,
  ...
}: {
  imports = [
    ./options.nix

    ./lsp
    ./mini

    ./git.nix
    ./hardtime.nix
    ./intellitab.nix
    ./nvim-ufo.nix
    ./spider.nix
    ./telescope.nix
    ./todo-comments.nix
    ./which-key.nix
    ./yanky.nix
  ];

  config.frf.plugins = {
    git = lib.mkDefault true;
    hardtime = lib.mkDefault true;
    intellitab = lib.mkDefault true;
    mini = lib.mkDefault true;
    nvim-ufo = lib.mkDefault true;
    spider = lib.mkDefault true;
    telescope = lib.mkDefault true;
    todo-comments = lib.mkDefault true;
    which-key = lib.mkDefault true;
    yanky = lib.mkDefault true;
  };
}
