{ pkgs, ... }: {
  imports = [
    ./comment.nix
    ./gitsigns.nix
    ./harpoon.nix
    ./keymaps.nix
    ./lualine.nix
    ./none-ls.nix
    ./set.nix
    ./sleuth.nix
    ./treesitter.nix
  ];

  viAlias = true;
  vimAlias = true;

  colorschemes.rose-pine = {
    enable = true;
    transparentBackground = true;
  };
}
