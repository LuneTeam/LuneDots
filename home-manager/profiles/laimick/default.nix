{ user, ... }:
{
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  imports = [
    ../../home/default.nix
  ];
}
