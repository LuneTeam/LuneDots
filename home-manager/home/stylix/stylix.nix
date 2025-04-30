{ pkgs, self, ... }:
{
  enable = true;
  autoEnable = false;

  image = ./wallpaper/anime/1.jpg;

  base16Scheme = "${self}/home-manager/home/stylix/oldworld.yaml";

  targets = {
    hyprpaper.enable = true;
    gtk.enable = false;
    qt.enable = false;
  };

  cursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 22;
  };
}
