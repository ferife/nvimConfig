{
  imports = [
    ./mini-ai.nix
    ./mini-comment.nix
    ./mini-files.nix
    ./mini-move.nix
    ./mini-pairs.nix
    ./mini-splitjoin.nix
    ./mini-trailspace.nix
  ];

  plugins.mini.enable = true;
}
