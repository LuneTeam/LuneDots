{ pkgs, self, ... }:
{
  enable = true;
  autoEnable = false;

  image = ./wallpaper/anime/5.jpg;

  base16Scheme = "${self}/home-manager/home/stylix/simple.yaml";

  targets = {
    hyprpaper.enable = true;
    qt.enable = false;
  };

  cursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };
}
