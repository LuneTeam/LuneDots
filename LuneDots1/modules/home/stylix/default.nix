{
  inputs,
  pkgs,
  opts,
  config,
  lib,
  self,
  ...
}:
{
  imports = [
    inputs.stylix.homeManagerModules.stylix
  ];
  stylix = import ./stylix.nix {
    inherit
      opts
      pkgs
      config
      lib
      self
      ;
  };
  fonts.fontconfig.enable = true;
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
