{ pkgs, ... }:
{
  imports = [
    ./comment.nix
  ];

  colorschemes.tokyonight.enable = true;
}
