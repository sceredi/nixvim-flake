{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>sg" = "live_grep";
      "<C-p>" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
    };
    extensions.fzf-native = { enable = true; };
  };
}
