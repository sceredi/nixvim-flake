{
  config,
  lib,
  ...
}:
let
  inherit (lib) mkIf;
in
{
  plugins = {
    lazydev.enable = true; # autoEnableSources not enough
    luasnip.enable = true; # autoEnableSources not enough

    blink-cmp = {
      enable = true;
      settings = {
        completion = {
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
        };
        signature.enabled = true;

        snippets.preset = mkIf config.plugins.luasnip.enable "luasnip";

        sources.default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
      };
    };
  };
}
