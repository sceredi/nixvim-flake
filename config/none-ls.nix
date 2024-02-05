{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        statix.enable = true;
        golangci_lint.enable = true;
      };
      formatting = {
        nixfmt.enable = true;
        gofumpt.enable = true;
      };
    };
  };
}
