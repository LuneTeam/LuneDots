{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = [
    inputs.hyprpicker.packages.${pkgs.system}.hyprpicker
  ];
}
