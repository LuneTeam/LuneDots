{ pkgs, self, ... }:
{
  enable = true;
  autoEnable = false;

  image = ./wallpaper/other/1.jpg;

  base16Scheme = "${self}/home-manager/home/stylix/simple.yaml";

  targets = {
    hyprpaper.enable = true;
    gtk.enable = false;
    qt.enable = false;
  };

  cursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 22;
  };

  enableReleaseChecks = false;
}
