{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
    };
    keymaps.lspBuf = {
      "gD" = "declaration";
      "gt" = "type_definition";
      "K" = "hover";

      "<leader>rn" = "rename";
      "<leader>ca" = "code_action";
    };
  };
}
