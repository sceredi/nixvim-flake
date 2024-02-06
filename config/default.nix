{ pkgs, ... }: {
  imports = [
    ./cmp.nix
    ./comment.nix
    ./copilot.nix
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
    ./undotree.nix
  ];

  viAlias = true;
  vimAlias = true;

  colorschemes.kanagawa = {
    enable = true;
  };

}
