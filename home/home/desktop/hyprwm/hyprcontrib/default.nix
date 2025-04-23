{
  inputs,
  ...
}:
{
  home.packages = [
    inputs.hyprland-contrib.packages."x86_64-linux".grimblast
  ];
}
