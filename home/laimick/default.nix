{ ... }:
{
  home.username = "laimick";
  home.homeDirectory = "/home/laimick";

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./desktop
    ./development
    ./packages
    ./stylix
    ./terminal
    ./wayland
  ];
}
