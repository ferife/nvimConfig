{
  plugins.mini.modules.files = {
    mappings = {
      close       = "q";
      go_in       = "l";
      go_in_plus  = "L";
      go_out      = "h";
      go_out_plus = "H";
      mark_goto   = "'";
      mark_set    = "m";
      reset       = "<BS>";
      reveal_cwd  = "@";
      show_help   = "g?";
      synchronize = "=";
      trim_left   = "<";
      trim_right  = ">";
    };
    options = {
      # Whether to delete permanently or move into module-specific trash
      permanent_delete = true;

      # Whetehr to use for editing directories
      use_as_default_explorer = true;
    };
  };
}
