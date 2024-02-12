{ pkgs, ... }: {
  imports = [
    ./autocmd.nix
    ./cmp.nix
    ./comment.nix
    ./copilot.nix
    ./gitsigns.nix
    ./harpoon.nix
    ./indent-blankline.nix
    ./keymaps.nix
    ./lualine.nix
    ./markdown-preview.nix
    ./lsp.nix
    ./none-ls.nix
    ./set.nix
    ./sleuth.nix
    ./telescope.nix
    ./treesitter.nix
    ./undotree.nix
    ./which-key.nix
  ];

  viAlias = true;
  vimAlias = true;

  colorschemes.base16 = {
    enable = true;
    colorscheme = "gruvbox-material-dark-hard";
  };
}
