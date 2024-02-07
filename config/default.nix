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

  colorschemes.rose-pine = {
    enable = true;
  };

}
