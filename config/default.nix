{ lib, ... }:
let
  # Define the path to your ftplugins directory
  ftpluginsDir = ./after/ftplugins;

  # Function to recursively collect files from a directory
  collectFiles =
    dir: prefix:
    lib.attrsets.concatMapAttrs (
      name: type:
      let
        path = "${dir}/${name}";
        relPath = "${prefix}${name}";
      in
      if type == "directory" then
        collectFiles path (relPath + "/")
      else
        {
          "after/ftplugin/${relPath}".source = path;
        }
    ) (builtins.readDir dir);

  # Collect all files from the ftplugins directory
  ftpluginFiles = collectFiles ftpluginsDir "";
in
{
  imports = [
    ./auto.nix
    ./keymaps.nix
    ./plugins
    ./performance.nix
  ];

  extraFiles = ftpluginFiles;

  vimAlias = true;

  colorschemes.rose-pine = {
    enable = true;
  };

  globals = {
    # Set <space> as the leader key
    # See `:help mapleader`
    mapleader = " ";
    maplocalleader = " ";

    # Set to true if you have a Nerd Font installed and selected in the terminal
    have_nerd_font = true;
  };

  opts = {
    # Show line numbers
    number = true;
    # You can also add relative line numbers, to help with jumping.
    #  Experiment for yourself to see if you like it!
    relativenumber = true;

    # Enable mouse mode, can be useful for resizing splits for example!
    mouse = "a";

    # Don't show the mode, since it's already in the statusline
    showmode = false;

    #  See `:help 'clipboard'`
    clipboard = {
      providers = {
        wl-copy.enable = true; # For Wayland
        xsel.enable = true; # For X11
      };

    };

    # Enable break indent
    breakindent = true;

    # Save undo history
    undofile = true;

    # Case-insensitive searching UNLESS \C or one or more capital letters in search term
    ignorecase = true;
    smartcase = true;

    # Keep signcolumn on by default
    signcolumn = "yes";

    # Decrease update time
    updatetime = 250;

    # Decrease mapped sequence wait time
    # Displays which-key popup sooner
    timeoutlen = 300;

    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;

    # Sets how neovim will display certain whitespace characters in the editor
    #  See `:help 'list'`
    #  See `:help 'listchars'`
    list = true;
    # NOTE: .__raw here means that this field is raw lua code
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

    # Preview subsitutions live, as you type!
    inccommand = "split";

    # Show which line your cursor is on
    cursorline = true;

    # Minimal number of screen lines to keep above and below the cursor
    scrolloff = 10;

    # See `:help hlsearch`
    hlsearch = false;
    incsearch = true;

    expandtab = true;

    wrap = false;

    swapfile = false;
    backup = false;

    colorcolumn = "80";

    # Set completeopt to have a better completion experience
    completeopt = "menuone,noselect";
  };

  plugins.web-devicons.enable = true;

  # TODO: Figure out where to move this
  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraconfigluapre
  extraConfigLuaPre = ''
    if vim.g.have_nerd_font then
      require('nvim-web-devicons').setup {}
    end
  '';

  # The line beneath this is called `modeline`. See `:help modeline`
  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraconfigluapost
  extraConfigLuaPost = ''
    -- vim: ts=2 sts=2 sw=2 et
  '';
}
