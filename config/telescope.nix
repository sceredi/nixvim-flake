{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>sf" = {
        action = "find_files";
        desc = "Telescope Find Files";
      };
      "gd" = {
        action = "lsp_definitions";
        desc = "Telescope LSP Definitions";
      };
      "gr" = {
        action = "lsp_references";
        desc = "Telescope LSP References";
      };
      "gI" = {
        action = "lsp_implementations";
        desc = "Telescope LSP Implementations";
      };
      "<leader>D" = {
        action = "lsp_type_definitions";
        desc = "Telescope LSP Type Definitions";
      };
      "<leader>ds" = {
        action = "lsp_document_symbols";
        desc = "Telescope LSP Document Symbols";
      };
      "<leader>ws" = {
        action = "lsp_dynamic_workspace_symbols";
        desc = "Telescope LSP Dynamic Workspace Symbols";
      };
      "<leader>?" = {
        action = "oldfiles";
        desc = "Telescope Find Recently Opened Files";
      };
      "<leader><space>" = {
        action = "buffers";
        desc = "Telescope Find Existing Buffers";
      };
      "<leader>ss" = {
        action = "builtin";
        desc = "Telescope Search Select";
      };
      "<C-p>" = {
        action = "git_files";
        desc = "Telescope Search Git Files";
      };
      "<leader>sh" = {
        action = "help_tags";
        desc = "Telescope Search Help";
      };
      "<leader>sw" = {
        action = "grep_string";
        desc = "Telescope Search Current Word";
      };
      "<leader>sg" = {
        action = "live_grep";
        desc = "Telescope Search by Grep";
      };
      "<leader>sd" = {
        action = "diagnostics";
        desc = "Telescope Search Diagnostics";
      };
      "<leader>sr" = {
        action = "resume";
        desc = "Telescope Search Resume";
      };
    };
    extensions.fzf-native = { enable = true; };
  };
}
