{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./misc.nix

    ./bash.nix
    ./c.nix
    # ./css.nix
    # ./html.nix
    ./hyprlang.nix
    ./java.nix
    ./javascript.nix
    ./lua.nix
    ./markdown.nix
    ./nix.nix
    ./python.nix
    ./yuck.nix
  ];

  config.frf.plugins.lsp.languages = {
    java = false;
    markdown.enable = false;
  };
}
