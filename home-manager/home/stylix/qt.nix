{ pkgs, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  home.packages = with pkgs; [
    qt6Packages.qtstyleplugin-kvantum
    qt6Packages.qt6ct
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-icon-theme
    catppuccin-gtk
  ];

  fonts.fontconfig.enable = true;

  gtk = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
    theme = {
      name = "Catppuccin-Frappe-Compact-Lavender-Dark";
      package = pkgs.catppuccin-gtk.override {
        variant = "frappe";
        size = "compact";
        accents = [ "lavender" ];
        tweaks = [ "rimless" ];
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "black"; };
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };
}
