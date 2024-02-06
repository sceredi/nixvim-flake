{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = [ "n" "v" ];
      key = "<space>";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<leader>pf";
      action = "<cmd>Ex<CR>";
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
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>y";
      action = ''[["+y]]'';
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = ''[["+Y]]'';
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = ''[["_d]]'';
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
