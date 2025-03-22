{ pkgs, ... }: {
  imports = [
    ./plugins/autocmd.nix
    ./plugins/cmp.nix
    ./plugins/comment.nix
    ./plugins/copilot.nix
    ./plugins/gitsigns.nix
    ./plugins/harpoon.nix
    ./plugins/indent-blankline.nix
    ./plugins/keymaps.nix
    ./plugins/lualine.nix
    ./plugins/markdown-preview.nix
    ./plugins/lsp.nix
    ./plugins/none-ls.nix
    ./plugins/set.nix
    ./plugins/sleuth.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/undotree.nix
    ./plugins/which-key.nix
  ];

  vimAlias = true;

  colorschemes.base16 = {
    enable = true;
    colorscheme = "gruvbox-material-dark-hard";
  };
}
