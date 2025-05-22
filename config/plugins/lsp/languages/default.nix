{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./misc.nix

    ./bash.nix
    ./java.nix
    ./lua.nix
    ./markdown.nix
    ./nix.nix
    ./yuck.nix

    # TODO: ./assembly.nix

    # TODO: ./awk.nix

    # TODO: ./c.nix

    # TODO: ./css.nix

    # TODO: ./html.nix
    # ts-autotag: plugin to autoclose and autorename html tags
    # colorizer: Highlights RGB hex codes in their respective color

    # TODO: ./javascript.nix

    # TODO: ./markdown.nix

    # TODO: ./python.nix
  ];

  config.frf.plugins.lsp.languages.markdown.enable = false;
}
