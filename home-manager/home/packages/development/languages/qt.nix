{ pkgs, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qt6ct";
  };

  home.packages = with pkgs; [
    kdePackages.qtstyleplugin-kvantum
    kdePackages.qtdeclarative
    kdePackages.qt6ct
    kdePackages.qtwayland
    kdePackages.qtbase
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qtquicktimeline
    kdePackages.qtsensors
    kdePackages.qtsvg
    kdePackages.qttools
    kdePackages.syntax-highlighting
  ];
}
