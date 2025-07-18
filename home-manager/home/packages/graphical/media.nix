{ pkgs, ... }:
{
  home.packages = with pkgs; [
    loupe
    nautilus
    showtime
    lact
    papers

    telegram-desktop
  ];
}
