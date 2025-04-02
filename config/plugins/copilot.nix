{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        suggestion = {
          enabled = true;
          keymap = {
            accept = "<M-l>";
            accept_word = "<M-L>";
            dismiss = "<C-]>";
            next = "M-]";
          };
        };
        panel.enabled = false;
      };
    };
  };
  autoGroups = {
    sceredi-disable-copilot = {
      clear = true;
    };
  };
  autoCmd = [
    {
      event = [ "VimEnter" ];
      desc = "Disable copilot upon startup";
      group = "sceredi-disable-copilot";
      callback.__raw = ''
        function()
          vim.cmd 'Copilot disable'
        end
      '';
    }
  ];
}
