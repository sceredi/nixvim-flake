{
  config.options = {
    nu = true;
    relativenumber = true;

    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;

    smartindent = true;

    wrap = false;

    swapfile = false;
    backup = false;
    undofile = true;

    # Set highlight on search
    hlsearch = false;
    incsearch = true;

    termguicolors = true;

    scrolloff = 10;
    signcolumn = "yes";

    colorcolumn = "80";

    # Make line numbers default
    number = true;

    # Enable mouse mode
    mouse = "a";

    # Enable break indent
    breakindent = true;

    # Case-insensitive searching UNLESS \C or capital in search
    ignorecase = true;
    smartcase = true;

    # Decrease update time
    updatetime = 250;
    timeoutlen = 300;

    # Set completeopt to have a better completion experience
    completeopt = "menuone,noselect";
  };
}
