{
  inputs,
  pkgs,
  self,
  ...
}:
{
  imports = [
    ./qt.nix
    inputs.stylix.homeManagerModules.stylix
  ];

  stylix = import ./stylix.nix { inherit pkgs self; };
}
