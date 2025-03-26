{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Bash
    bash-language-server
    shellcheck

    # C/C++
      clang-tools
      cpplint

    # Nix
    nixfmt-unstable # or adjust your config to use nixfmt-rfc-style if preferred
    statix

    # Rust
    cargo
    rustc
    rustfmt

    # Elixir
    elixir

    # Go
    go
    gopls
    golangci-lint

    # Scala
    metals

    # Kotlin
    kotlin-native

    # Java
    jdt-language-server
    google-java-format
    checkstyle

    # Python
    pyright
    ruff
    isort
    black
    flake8

    # JavaScript / TypeScript
    nodePackages.typescript-language-server
    nodePackages.eslint # may be required by other tools or language servers
    nodePackages.eslint_d
    nodePackages.prettierd
    nodePackages.prettier

    # Lua
    lua-language-server
    stylua
    selene

    # Docker
    dockerfile-language-server-nodejs

    # XML
    lemminx

    # Haskell (if needed)
    hlint

    # JSON
    jsonlint
  ];
}

