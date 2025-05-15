{ inputs, systems, ... }:
{
  home.packages = [
    inputs.packages.${systems}.hyprlock
  ];
}
