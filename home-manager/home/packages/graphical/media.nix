{ pkgs, ... }:
{
  home.packages = with pkgs; [
    photoqt
    nautilus
    telegram-desktop
    showtime
    neohtop

    lact
  ];
}
