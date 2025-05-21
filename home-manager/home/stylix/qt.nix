{ pkgs, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  home.packages = with pkgs; [
    qt6Packages.qtstyleplugin-kvantum
    qt6Packages.qt6ct
    gtk4
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
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };
}
