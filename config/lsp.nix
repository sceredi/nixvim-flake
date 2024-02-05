{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "declaration";
      "gr" = "references";
      "gt" = "type_definition";
      "gI" = "implementation";
      "K" = "hover";

      "<leader>rn" = "rename";
      "<leader>ca" = "code_action";
    };
  };
}
