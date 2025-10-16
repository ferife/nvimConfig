{
  config,
  lib,
  ...
}: {
  options.frf.plugins = {
    git = lib.mkEnableOption "the plugins and config for working with git";
    hardtime = lib.mkEnableOption "Hardtime.nvim, a plugin that blocks repeated use of the simpler vim keys to encourage the use of more graceful bindings";
    intellitab = lib.mkEnableOption "IntelliTab, a small plugin that will auto indent blank lines to the same place smartindent would";
    mini = lib.mkEnableOption "mini, a collection of small QoL plugins";
    nvim-ufo = lib.mkEnableOption "nvim-ufo, a plugin made to make the folding function easier to use";
    spider = lib.mkEnableOption "spider, a plugin that allows the w, e, and b motions to take into account the subwords within camelCase, SNAKE_CASE, and kebab-case";
    telescope = lib.mkEnableOption "telescope, a highly extensible fuzzy finder";
    todo-comments = lib.mkEnableOption "todo-comments, a plugin that adds special support for TODO comments";
    which-key = lib.mkEnableOption "WhichKey, a plugin that shows a guide to keymaps";
    yanky = lib.mkEnableOption "Yanky, a plugin that improves the yank and put functionalities";
  };
}
