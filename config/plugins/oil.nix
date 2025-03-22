{
  plugins.oil.enable = true;
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
