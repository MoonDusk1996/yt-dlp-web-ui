{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = [
    pkgs.go
    pkgs.gnumake
    pkgs.nodejs
    pkgs.pnpm
    pkgs.ffmpeg
    pkgs.yt-dlp
  ];

  shellHook = ''
    export GOPATH="$PWD/go"
    export PATH="$GOPATH/bin:$PATH"
  '';
}
