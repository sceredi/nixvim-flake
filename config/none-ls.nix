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
        # flake8.enable = true;
        # lua
        luacheck.enable = true;
        # kotlin
        ktlint.enable = true;
        # markdown
        markdownlint.enable = true;
      };
      formatting = {
        # nix
        nixfmt.enable = true;
        # go
        gofumpt.enable = true;
        # python
        black.enable = true;
        # java
        google_java_format.enable = true;
        # json
        jq.enable = true;
        # lua
        stylua.enable = true;
        # kotlin
        ktlint.enable = true;
        # markdown
        markdownlint.enable = true;
        # rust
        rustfmt.enable = true;
      };
    };
  };
}
