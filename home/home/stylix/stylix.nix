{ self, pkgs, ... }:
let
  theme = "${pkgs.base16-schemes}/share/themes/catppuccin-latte.yaml";
in
{
  enable = true;
  autoEnable = false;
  image = ./wallpaper/abstractions/1.jpeg;
  base16Scheme = theme;

  targets = {
    hyprpaper.enable = true;
  };

  cursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 22;
  };
}
