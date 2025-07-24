{
  inputs,
  pkgs,
  self,
  ...
}:
{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = import ./stylix.nix { inherit pkgs self; };
}
