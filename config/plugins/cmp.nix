{
  plugins.luasnip = { enable = true; };

  plugins.cmp-nvim-lsp = { enable = true; };

  plugins.cmp-path = { enable = true; };

  # `friendly-snippets` contains a variety of premade snippets
  #    See the README about individual language/framework/plugin snippets:
  #    https://github.com/rafamadriz/friendly-snippets
  # https://nix-community.github.io/nixvim/plugins/friendly-snippets.html
  # plugins.friendly-snippets = {
  #   enable = true;
  # };

  extraLuaPackages = ps:
    [
      # Required by luasnip
      ps.jsregexp
    ];

  plugins.cmp = {
    enable = true;

    settings = {
      snippet = {
        expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      };

      completion = { completeopt = "menu,menuone,noinsert"; };

      mapping = {
        # Select the [n]ext item
        "<C-n>" = "cmp.mapping.select_next_item()";
        # Select the [p]revious item
        "<C-p>" = "cmp.mapping.select_prev_item()";
        # Scroll the documentation window [b]ack / [f]orward
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-y>" = "cmp.mapping.confirm { select = true }";
        "<C-Space>" = "cmp.mapping.complete {}";

        "<C-l>" = ''
          cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' })
        '';
        "<C-h>" = ''
          cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' })
        '';

      };

      # WARNING: If plugins.cmp.autoEnableSources Nixivm will automatically enable the
      # corresponding source plugins. This will work only when this option is set to a list.
      # If you use a raw lua string, you will need to explicitly enable the relevant source
      # plugins in your nixvim configuration.
      sources = [
        {
          name = "luasnip";
        }
        # Adds other completion capabilites.
        #  nvim-cmp does not ship with all sources by default. They are split
        #  into multiple repos for maintenance purposes.
        { name = "nvim_lsp"; }
        { name = "path"; }
      ];
    };
  };
}
