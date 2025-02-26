{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        mapping = {
          "<CR>"  = "cmp.mapping.confirm({ select = true })";
          "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
       };
        sources = [
          {
            name = "buffer";
            options.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          { name = "calc"; }
          { name = "cmdline"; }
          { name = "dap"; }
          { name = "latex_symbols"; }
          { name = "luasnip"; }
          { name = "nerdfont"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "nvim_lua"; }
          { name = "path"; }
          { name = "plugins"; }
          { name = "rg"; }
          { name = "spell"; }
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
}
