{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qt5.qtwayland
    qt6.qtwayland
    kdePackages.qt6ct
    gtk4
    gtk3
  ];
}
