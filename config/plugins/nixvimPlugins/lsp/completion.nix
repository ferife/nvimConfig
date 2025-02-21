{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          # TODO: Add source for english dictionary words
          {
            name = "buffer";
            options.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          { name = "calc"; }
          { name = "latex_symbols"; }
          { name = "luasnip"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "nvim_lua"; }
          { name = "path"; }
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
