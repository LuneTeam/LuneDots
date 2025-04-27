{ pkgs, systems, ... }:
{
  home.packages = with pkgs; [
    inputs.hyprwm.packages.${systems}.hyprpicker
  ];
}
