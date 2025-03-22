{
  keymaps = [
    # Clear highlights on search when pressing <Esc> in normal mode
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    # Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
    # for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
    # is not what someone will guess without a bit more experience.
    #
    # NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
    # or just use <C-\><C-n> to exit terminal mode
    {
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options = { desc = "Exit terminal mode"; };
    }

    {
      mode = [ "n" "v" ];
      key = "<space>";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<A-i>";
      action = "<C-i>";
    }
    {
      mode = "n";
      key = "<A-o>";
      action = "<C-o>";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = ''[["_dP]]'';
      lua = true;
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>y";
      action = ''[["+y]]'';
      lua = true;
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = ''[["+Y]]'';
      lua = true;
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = ''[["_d]]'';
      lua = true;
    }
    {
      mode = "i";
      key = "<C-c>";
      action = "<Esc>";
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua vim.lsp.buf.format()<CR>";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>cnext<CR>zz";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>cprev<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>k";
      action = "<cmd>lnext<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>lprev<CR>zz";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "[[:%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>]]";
    }
    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
    }
    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>lua vim.diagnostic.setloclist()<CR>";
    }
  ];
}
