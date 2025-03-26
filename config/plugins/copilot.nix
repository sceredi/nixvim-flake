{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        suggestion.enabled = false;
        panel.enabled = false;
      };
    };
  };
  extraConfigLua = ''
    -- Create an autocommand that triggers once when Neovim fully starts (VimEnter event)
    vim.api.nvim_create_autocmd("VimEnter", {
      pattern = "*", -- Apply to all files
      group = vim.api.nvim_create_augroup("DisableCopilotOnStartup", { clear = true }), -- Group for organization
      callback = function()
        vim.cmd 'Copilot disable'
      end,
    })
  '';

}
