{ pkgs, self, ... }:
{
  enable = true;
  autoEnable = false;

  image = ./wallpaper/anime/6.png;

  base16Scheme = "${self}/home-manager/home/stylix/wave.yaml";

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
