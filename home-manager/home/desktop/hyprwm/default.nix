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

    # systemd = {
    #   enable = false;
    #   variables = [ "--all" ];
    #   extraCommands = [
    #     "systemctl --user stop graphical-session.target"
    #     "systemctl --user start hyprland-session.target"
    #   ];
    # };
  };

  services.hyprpaper = {
    enable = true;
    package = inputs.hyprpaper.packages.${systems}.hyprpaper;
  };

  home.packages = with pkgs; [
    hyprland-qt-support
  ];
}
