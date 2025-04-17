{ self, pkgs, ... }:
{
  enable = true;
  autoEnable = false;
  image = ./wallpaper/abstractions/2.jpeg;
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
