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
    intellitab = lib.mkDefault true;
    mini = lib.mkDefault true;
    nvim-ufo = lib.mkDefault true;
    spider = lib.mkDefault true;
    telescope = lib.mkDefault true;
    todo-comments = lib.mkDefault true;
    which-key = lib.mkDefault true;
    yanky = lib.mkDefault true;
  };

  # TODO: Find a plugin that auto sorts lines of text

  # TODO: Set up codesnap or an alternative
  # Plugin that creates nice-looking screenshots of code

  # TODO: Set up csvview
  # Plugin that renders CSV files as actual tables, and allows some nice table-like manipulation

  # TODO: Set up harpoon
  # Plugin that keeps a workspace-specific list of files that are visited frequently, making it easy to travel back to these

  # TODO: Set up trouble
  # Plugin by folke that shows lists with diagnostics, LSP references, Telescope search results, etc

  # TODO: Set up undotree
  # Plugin that keeps a list of undo history as a tree

  # TODO: Set up vim-be-good
  # vim-be-good is a collection of games created by ThePrimeagen, for the purpose of mastering basic vim movement

  # TODO: Set up wilder
  # Wilder is a plugin that adds completion to the menu that opens when pressing `:` or `/`

  # TODO: Consider setting up yazi.nvim
}
