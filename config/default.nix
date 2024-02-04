{ pkgs, ... }: {
  imports = [
    ./comment.nix
    ./gitsigns.nix
    ./keymaps.nix
    ./lualine.nix
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
