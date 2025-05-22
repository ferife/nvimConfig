{
  config,
  lib,
  ...
}: {
  # Import all your configuration modules here
  imports = [
    ./options.nix

    ./appearance.nix
  ];

  config.appearance.colorscheme = "onedark";
}
