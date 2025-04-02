{
  plugins.oil = {
    enable = true;
    settings = {
      view_options.show_hidden = true;
      keymaps = {
        "<C-h>" = false;
        "<C-l>" = false;
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "-";
      action = "<CMD>Oil<CR>";
      options.desc = "Open parent directory";
    }
    {
      mode = "n";
      key = "<leader>pf";
      action = "<CMD>Oil<CR>";
      options.desc = "Open parent directory";
    }
  ];
}
