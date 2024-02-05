{ pkgs, ... }: {
  imports = [
    ./comment.nix
    ./gitsigns.nix
    ./harpoon.nix
    ./keymaps.nix
    ./lualine.nix
    ./lsp.nix
    ./none-ls.nix
    ./set.nix
    ./sleuth.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  viAlias = true;
  vimAlias = true;

  colorschemes.rose-pine = {
    enable = true;
    transparentBackground = true;
  };

}
