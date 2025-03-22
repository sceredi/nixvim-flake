{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # bash
    bash-language-server

    # c/c++
    clang-tools

    # Nix
    nixfmt

    # Rust
    cargo
    rustc

    # Elixir
    elixir

    # FSharp
    dotnet-sdk

    # Go
    go
    gopls

    # scala
    metals

    # Kotlin
    kotlin-native

    # Java
    jdt-language-server

    # python
    pyright

    # typescript
    nodePackages.typescript-language-server
    nodePackages.eslint

    # lua
    lua-language-server

    # docker
    dockerfile-language-server-nodejs

    # xml
    lemminx

  ];
}
