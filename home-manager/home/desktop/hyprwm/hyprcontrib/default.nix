{
  inputs,
  systems,
  ...
}:
{
  home.packages = [
    inputs.hyprland-contrib.packages.${systems}.grimblast
  ];
}
