{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qt5.qtwayland
    qt6.qtwayland
    gtk4
    gtk3
  ];
}
