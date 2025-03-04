{ config, lib, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plugins

    ./appearance.nix
    ./basics.nix
  ];

  config.appearance.colorscheme = "onedark";
}
# TODO: Look into how to do project-wide string substitution
