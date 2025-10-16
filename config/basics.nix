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
  };

  wrapRc = true;
}
