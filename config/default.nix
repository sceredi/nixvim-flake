{ pkgs, ... }:
{
  imports = [
    ./comment.nix
    ./gitsigns.nix
    ./sleuth.nix
    ./treesitter.nix
  ];

  colorschemes.tokyonight.enable = true;
}
