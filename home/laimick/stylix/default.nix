{
  inputs,
  pkgs,
  self,
  ...
}:
{
  imports = [
    inputs.stylix.homeManagerModules.stylix
  ];

  stylix = {
    enable = true;
    autoEnable = false;
    image = ./wallpaper/test.jpg;
    base16Scheme = "${self}/home/laimick/stylix/frappe.yaml";

    targets = {
      cava.enable = true;
      hyprpaper.enable = true;
      btop.enable = true;
    };

    cursor = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 22;
    };
  };

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.symbols-only
    nerd-fonts.hack
    twemoji-color-font
    noto-fonts-emoji
    fantasque-sans-mono
    maple-mono.CN
    maple-mono.NF
    cascadia-code
    dejavu_fonts
    noto-fonts

    qt5.qtwayland
    qt6.qtwayland
    kdePackages.qt6ct
    gtk4
    gtk3

  ];

  gtk = {
    enable = true;
    font = {
      name = "Fira Code";
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
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
