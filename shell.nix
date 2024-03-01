{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
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

    # Kotlin
    kotlin-native

    # Java
    jdt-language-server
  ];
}
