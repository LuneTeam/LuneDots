{ pkgs, inputs, ... }:
{
  programs.hyprland = {
    enable = true;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "hyprland" ];
      hyprland.default = [
        "hyprland"
        "gtk"
      ];
    };
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
