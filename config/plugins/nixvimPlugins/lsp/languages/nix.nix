{userSettings, ...}: let
  nvimFlakePath = "/home/${userSettings.username}/Documents/Configs/nvimConfig/nvimConfig-main";
  nixFlakePath = "/home/${userSettings.username}/Documents/Configs/nixConfig/nixConfig-main";
in {
  plugins.lsp.servers.nixd = {
    enable = true;
    cmd = ["nixd"];
    settings = {
      # nixpkgs.expr = "import <nixpkgs> { }";
      formatting.command = ["alejandra"];
      options = {
        nixvim.expr = ''(builtins.getFlake "${nvimFlakePath}").packages.$(system).neovimNixvim.options'';
        nixos.expr = ''(builtins.getFlake "${nixFlakePath}").nixosConfigurations.laptop.options'';
        home_manager.expr = ''(builtins.getFlake "${nixFlakePath}").nixosConfigurations.${userSettings.username}@laptop.options'';
      };
      # options = ''
      #   nixos = {
      #     expr = '(${builtins.getFlake "${nixFlakePath}"}).nixosConfigurations.laptop.options',
      #   },
      #   home_manager = {
      #     expr = '(${builtins.getFlake "${nixFlakePath}"}).homeConfigurations.${userSettings.username}@laptop.options',
      #   },
      # '';
    };
  };
}
