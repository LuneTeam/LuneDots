{ pkgs, ... }:
{
  home.packages = with pkgs; [
    loupe
    nautilus
    telegram-desktop
    showtime
    lact
    papers
  ];
}
