{
  options.completeopt = ["menu" "menuone" "noselect"];

  config.plugins = {
    luasnip.enable = true;

    lspkind = {
      enable = true;

      cmp = {
        enable = true;
        menu = {
          nvim_lsp = "[LSP]";
          nvim_lua = "[api]";
          path = "[path]";
          luasnip = "[snip]";
          buffer = "[buffer]";
        };
      };
    };
    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";

      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<CR>" = "cmp.mapping.confirm{
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }";
      };

      sources = [
        {name = "path";}
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {
          name = "buffer";
          # Words from other open buffers can also be suggested.
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
      ];
    };
  };
}
