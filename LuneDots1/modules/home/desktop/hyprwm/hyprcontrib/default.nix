{
  inputs,
  system,
  ...
}:
{
  home.packages = [
    inputs.hyprland-contrib.packages.${system}.grimblast
  ];
}
