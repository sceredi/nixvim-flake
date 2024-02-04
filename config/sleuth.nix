{ pkgs, ... }: {
  # Automatically set the 'shiftwidth' option to the value of 'tabstop'
  extraPlugins = with pkgs.vimPlugins; [ vim-sleuth ];
}
