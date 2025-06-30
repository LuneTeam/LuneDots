{ inputs, systems, ... }:
{
  home.packages = [
    inputs.vermilion.packages.${systems}.vermilion
  ];
}
