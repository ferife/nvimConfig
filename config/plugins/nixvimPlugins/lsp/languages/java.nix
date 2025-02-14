# { lib, pkgs }:
{
  plugins.nvim-jdtls = {
    enable = true;
    configuration = "/home/fernandorf/.cache/jdtls/config";
    data = "/home/fernandorf/.cache/jdtls/workspace";
  };
}
