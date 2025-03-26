{
  # 1. Enable the fugitive plugin
  plugins.fugitive = {
    enable = true;
    # Settings that might be configured via fugitive options could go here,
    # but your config mainly uses keymaps and autocommands.
  };

  # 2. Define the global keymap (<leader>gs)
  keymaps = [{
    mode = "n"; # Normal mode
    key = "<leader>gs";
    action = "<cmd>Git<CR>"; # Use <cmd>...<CR> for Ex commands
    options = {
      noremap = true;
      silent = true; # Usually preferred for command execution
      desc = "[G]it [S]tatus";
    };
  }];

  # 3. Define the autocommand to set buffer-local keymaps for fugitive buffers
  # We'll use Nixvim's `autocmds` attribute
  autoGroups = { NixvimFugitiveLocalKeys = { clear = true; }; };
  autoCmd = [{
    # Define the event and pattern
    event = "BufWinEnter";
    pattern = "*"; # Check filetype within the callback

    # Assign a group name (optional but good practice)
    # Using a Nixvim-specific name here, but you could use "ThePrimeagen_Fugitive"
    group = "NixvimFugitiveLocalKeys";
    desc = "Setup Fugitive buffer-local keymaps";

    # Use luaCallback to embed the Lua logic
    callback.__raw = ''
      function()
              if vim.bo.ft ~= 'fugitive' then
                return
              end

              local bufnr = vim.api.nvim_get_current_buf()
              local opts = { buffer = bufnr, remap = false }
              opts.desc = 'Git Push'
              vim.keymap.set('n', '<leader>p', function()
                vim.cmd.Git 'push'
              end, opts)

              -- rebase always
              opts.desc = 'Git Pull Rebase'
              vim.keymap.set('n', '<leader>P', function()
                vim.cmd.Git { 'pull', '--rebase' }
              end, opts)

              -- NOTE: It allows me to easily set the branch i am pushing and any tracking
              -- needed if i did not set the branch up correctly
              opts.desc = 'Git Push -u origin'
              vim.keymap.set('n', '<leader>t', ':Git push -u origin ', opts)
              vim.keymap.set('n', 'fg', '<cmd>diffget //2<CR>', { desc = 'Pick left change' })
              vim.keymap.set('n', 'fm', '<cmd>diffget //3<CR>', { desc = 'Pick right change' })
            end
    ''; # End of luaCallback string
  }];
}
