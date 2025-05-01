{ pkgs, ... }:
{
  home.packages = with pkgs; [
    photoqt
    mpv
    nautilus
  ];
}
