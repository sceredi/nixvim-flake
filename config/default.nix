{ pkgs, ... }:
{
  imports = [
    ./comment.nix
    ./sleuth.nix
  ];

  colorschemes.tokyonight.enable = true;
}
