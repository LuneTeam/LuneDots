{ pkgs, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  home.packages = with pkgs; [
    kdePackages.qtstyleplugin-kvantum
    kdePackages.qtdeclarative
    kdePackages.full
    kdePackages.qt6ct
    kdePackages.qtwayland
    kdePackages.kirigami
  ];
}
