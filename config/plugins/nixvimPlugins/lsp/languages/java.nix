{ userSettings, ... }:
{
  plugins.nvim-jdtls = {
    enable = true;
    configuration = "/home/${userSettings.username}/.cache/jdtls/config";
    data = "/home/${userSettings.username}/.cache/jdtls/workspace";
  };
}
