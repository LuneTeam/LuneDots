{ self, pkgs, ... }:
{
  enable = true;
  autoEnable = false;
  image = ./wallpaper/8.jpg;
  base16Scheme = "${self}/modules/home/stylix/frappe.yaml";

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
}
