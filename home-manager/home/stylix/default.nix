{
  inputs,
  pkgs,
  self,
  ...
}:
{
  imports = [
    ./qt.nix
    inputs.stylix.homeModules.stylix
  ];

  stylix = import ./stylix.nix { inherit pkgs self; };
}
