{
  config,
  lib,
  ...
}: {
  config = lib.mkIf config.frf.plugins.lsp.completion {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          mapping = {
            "<C-CR>" = "cmp.mapping.confirm({ select = true })";
            "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
            "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
            # "<C-j>" = "cmp.mapping.scroll_docs(4)";
            # "<C-k>" = "cmp.mapping.scroll_docs(-4)";
          };
          sources = [
            {
              name = "buffer";
              options.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
            {name = "calc";}
            {name = "cmdline";}
            {name = "dap";}
            {name = "latex_symbols";}
            {name = "luasnip";}
            {name = "nerdfont";}
            {name = "nvim_lsp";}
            {name = "nvim_lsp_signature_help";}
            {name = "nvim_lua";}
            # { name = "obsidian"; }
            {name = "path";}
            {name = "plugins";}
            # { name = "render-markdown"; }
            {name = "rg";}
            {name = "spell";}
            # { name = "zotcite"; }
          ];
          snippet.expand = ''
            function(args)
              require('luasnip').lsp_expand(args.body)
            end
          '';
        };
      };
      luasnip.enable = true;
      friendly-snippets.enable = true;
    };
  };
}
