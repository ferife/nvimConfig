{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./misc.nix

    # TODO: ./assembly.nix
    # TODO: ./awk.nix
    ./bash.nix
    # TODO: ./c.nix
    # TODO: ./css.nix
    # TODO: ./html.nix
    #`- ts-autotag: plugin to autoclose and autorename html tags
    # - colorizer: Highlights RGB hex codes in their respective color
    # TODO: ./hyprlang.nix
    ./java.nix
    # TODO: ./javascript.nix
    ./lua.nix
    ./markdown.nix
    ./nix.nix
    # TODO: ./python.nix
    ./yuck.nix
  ];

  config.frf.plugins.lsp.languages = {
    java = false;
    markdown.enable = false;
  };
}
