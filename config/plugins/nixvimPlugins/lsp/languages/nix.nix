{
  plugins.lsp.servers.nixd = {
    enable = true;
    cmd = [ "nixd" ];
    settings = {
      nixpkgs.expr = "import <nixpkgs> { }";
      formatting.command = ["alejandra"];
      options.nixvim.expr = ''(builtins.getFlake "~/Documents/Configs/nvimConfig").packages.$(system).neovimNixvim.options'';
      # options = ''
      #   nixos = {
      #     expr = '(${builtins.getFlake "/home/fernandorf/Documents/Configs/nixConfig"}).nixosConfigurations.laptop.options',
      #   },
      #   home_manager = {
      #     expr = '(${builtins.getFlake "/home/fernandorf/Documents/Configs/nixConfig"}).homeConfigurations.fernadorf@laptop.options',
      #   },
      # '';
    };
  };
}
