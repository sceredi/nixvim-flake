{
  imports = [
    ./keymaps.nix
    # ./plugins/autocmd.nix
    # ./plugins/cmp.nix
    # ./plugins/comment.nix
    # ./plugins/copilot.nix
    # ./plugins/gitsigns.nix
    # ./plugins/harpoon.nix
    # ./plugins/indent-blankline.nix
    # ./plugins/keymaps.nix
    # ./plugins/lualine.nix
    # ./plugins/markdown-preview.nix
    # ./plugins/lsp.nix
    # ./plugins/none-ls.nix
    # ./plugins/set.nix
    # ./plugins/sleuth.nix
    # ./plugins/telescope.nix
    # ./plugins/treesitter.nix
    # ./plugins/undotree.nix
    # ./plugins/which-key.nix
  ];

  vimAlias = true;

  colorschemes.catppuccin = { enable = true; };

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
    hlsearch = true;
  };
}
