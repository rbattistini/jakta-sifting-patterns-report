{ pkgs, ... }:

{
  packages = with pkgs; [
    pkgs.python3Packages.pygments
    texliveFull 
    just
    tectonic
  ];

  enterShell = ''
    just --version
    tectonic --version
  '';
}
