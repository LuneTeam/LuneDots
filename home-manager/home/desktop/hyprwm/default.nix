{
  inputs,
  pkgs,
  systems,
  ...
}:
{
  imports = [
    ./hyprcontrib
    ./hyprland
    # ./hyprlock #TODOOO
    ./hyprpicker
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

  services.hyprpaper = {
    enable = true;
    package = inputs.hyprpaper.packages.${systems}.hyprpaper;
  };

  home.packages = with pkgs; [
    hyprland-qt-support
  ];
}
