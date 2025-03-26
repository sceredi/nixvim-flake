{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    # c-cpp
    clang-tools
    # lua
    stylua
    # python
    isort
    black
    # js/ts
    nodePackages.prettier
    # java
    google-java-format
    # go
    gopls
    # nix
    nixfmt-rfc-style
    # ocaml
    ocamlformat
    # zig
    zig
  ];

  # Autoformat
  # https://nix-community.github.io/nixvim/plugins/conform-nvim.html
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      # default_format_opts = {
      #   lsp_format = "fallback";
      # };
      # format_after_save = {
      #   lsp_format = "fallback";
      # };
      format_on_save = ''
        function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = 'fallback' }
        end
      '';
      formatters_by_ft = {
        c = [ "clang-format" ];
        cpp = [ "clang-format" ];
        html = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        css = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        javascript = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        javascriptreact = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        typescript = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        typescriptreact = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        java = [ "google-java-format" ];
        python = [ "black" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        markdown = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        rust = [ "rustfmt" ];
        ocaml = [ "ocamlformat" ];
        zig = [ "zig fmt" ];
      };
    };
  };

  # https://nix-community.github.io/nixvim/keymaps/index.html
  keymaps = [
    {
      mode = "";
      key = "<leader>f";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "[F]ormat buffer";
      };
    }
  ];
}
