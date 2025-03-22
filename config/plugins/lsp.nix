{ pkgs, ... }: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # c/c++
        clangd = { enable = true; };
        # lua
        lua-ls = {
          enable = true;
          extraOptions = {
            settings = { Lua = { telemetry = { enabled = false; }; }; };
          };
        };
        # go
        gopls.enable = true;
        # nix
        nixd.enable = true;
        # python
        pyright = { enable = true; };
        # typescript/javascript
        tsserver = {
          enable = false;
          filetypes =
            [ "javascript" "javascriptreact" "typescript" "typescriptreact" ];
        };
        eslint = { enable = true; };
        # bash
        bashls.enable = true;
        # css
        cssls.enable = true;
        # docker
        dockerls.enable = true;
        # html
        html.enable = true;
        # json
        jsonls.enable = true;
        # kotlin
        kotlin-language-server.enable = true;
        # scala
        metals.enable = true;
        # xml
        lemminx.enable = true;
        # rust
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
          settings = {
            checkOnSave = true;
            check = {
              command = "clippy";
            };
            procMacro = {
              enable = true;
            };
          };
        };
      };
      keymaps.lspBuf = {
        "gD" = "declaration";
        "gt" = "type_definition";
        "K" = "hover";

        "<leader>rn" = "rename";
        "<leader>ca" = "code_action";
      };
    };
    nvim-jdtls = {
      enable = true;
      data = "~/.cache/jdtls/workspace";
      configuration = "~/.cache/jdtls/configurations";
      cmd = [ "${pkgs.jdt-language-server}/bin/jdtls" ];
    };
  };
}
