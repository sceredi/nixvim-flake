{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        # nix
        statix.enable = true;
        # go
        golangci_lint.enable = true;
        # python
        flake8.enable = true;
      };
      formatting = {
        # nix
        nixfmt.enable = true;
        # go
        gofumpt.enable = true;
        # python
        black.enable = true;
      };
    };
  };
}
