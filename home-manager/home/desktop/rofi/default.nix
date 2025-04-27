{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rofi-wayland
  ];
  imports = [
    ./settings.nix
  ];
}
