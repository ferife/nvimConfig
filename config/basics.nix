{
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  globals = {
    mapleader = " ";
    maplocalleader = ",";
  };
  viAlias = true;
  vimAlias = true;
  opts = {
    number = true; # Add line numbers
    relativenumber = true; # Makes line numbers relative to current line
    linebreak = true; # Allows for word wrap to break lines at any character contained inside of the `breakat` string. By default, this is <space>I!@*-+;:,./?

    shiftwidth = 2; # Makes indent width equal to 2 spaces
    scrolloff = 10; # When moving up and down long files, makes cursor stay min 10 lines from top/bottom of window

    mouse = ""; # Disables the mouse
  };

  wrapRc = true;

  keymaps = [
    {
      action = "<cmd>echo \"Use h to move!\"<CR>";
      key = "<left>";
      mode = ["n" "v"];
      options.desc = "Learn HJKL and get good, dumbass";
    }
    {
      action = "<cmd>echo \"Use j to move!\"<CR>";
      key = "<down>";
      mode = ["n" "v"];
      options.desc = "Learn HJKL and get good, dumbass";
    }
    {
      action = "<cmd>echo \"Use k to move!\"<CR>";
      key = "<up>";
      mode = ["n" "v"];
      options.desc = "Learn HJKL and get good, dumbass";
    }
    {
      action = "<cmd>echo \"Use l to move!\"<CR>";
      key = "<right>";
      mode = ["n" "v"];
      options.desc = "Learn HJKL and get good, dumbass";
    }
    {
      action = "<c-\\><c-n>";
      key = "<esc><esc>";
      mode = "t";
      options.desc = "Easily escape terminal mode";
    }
  ];
}
