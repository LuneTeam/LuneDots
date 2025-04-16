{ pkgs, ... }:
{
  home.packages = with pkgs; [
    photoqt
    mpv
    figma-linux
  ];
}
