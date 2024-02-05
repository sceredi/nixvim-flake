{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        statix.enable = true;
      };
      formatting = {
        nixfmt.enable = true;
      };
    };
  };
}
