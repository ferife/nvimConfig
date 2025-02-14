{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
      };
      pickers = {
        find_files = {
          theme = "ivy";
          hidden = true;
        };
      };
      extensions = {
        fzy-native.enable = true; # Fast fuzzy search
        # undo = {
        #   enable = true;
        # };
      };
    };
  };
  keymaps = [
    {
      action.__raw = ''require('telescope.builtin').find_files'';
      key = "<leader>fd";
      mode = "n";
      options.desc = "Search for file names in the current working directory";
    }
    {
      action.__raw = ''require('telescope.builtin').help_tags'';
      key = "<leader>fh";
      mode = "n";
      options.desc = "Search through the neovim help";
    }
    {
      action.__raw = ''${builtins.readFile ./luaFiles/multigrep.lua}'';
      key = "<leader>fg";
      mode = "n";
      options.desc = "Grep search through all text file contents in current working directory";
    }
  ];
}
