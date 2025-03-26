{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    # c-cpp
    cpplint
    # go
    golangci-lint
    # lua
    selene
    # python
    ruff
    # js/ts
    nodePackages.eslint
    # nix
    statix
  ];
  # Linting
  # https://nix-community.github.io/nixvim/plugins/lint/index.html
  plugins.lint = {
    enable = true;

    # NOTE: Enabling these will cause errors unless these tools are installed
    lintersByFt = {
      c = [ "cpplint" ];
      cpp = [ "cpplint" ];
      go = [ "golangci-lint" ];
      lua = [ "selene" ];
      python = [ "ruff" ];
      javascript = [ "eslint_d" ];
      javascriptreact = [ "eslint_d" ];
      typescript = [ "eslint_d" ];
      typescriptreact = [ "eslint_d" ];
      nix = [ "statix" ];
    };

    # Create autocommand which carries out the actual linting
    # on the specified events.
    autoCmd = {
      callback.__raw = ''
        function()
          require('lint').try_lint()
        end
      '';
      group = "lint";
      event = [
        "BufEnter"
        "BufWritePost"
        "InsertLeave"
      ];
    };
  };

  # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
  autoGroups = {
    lint = {
      clear = true;
    };
  };
}
