{userSettings, ...}: {
  plugins.jdtls = {
    enable = true;
    settings.cmd = [
      "java"
      "-data"
      "/home/${userSettings.username}/.cache/jdtls/workspace"
      "-configuration"
      "/home/${userSettings.username}/.cache/jdtls/config"
    ];
  };
}
