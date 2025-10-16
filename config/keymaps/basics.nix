{
  config,
  lib,
  ...
}: {
  keymaps = [
    {
      action = "<c-\\><c-n>";
      key = "<esc><esc>";
      mode = "t";
      options.desc = "Easily escape terminal mode";
    }
  ];
}
