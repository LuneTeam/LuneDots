{ inputs, ... }:
{
  imports = [
    ./modules
    ./settings.nix

    inputs.nixvim.homeManagerModules.nixvim
  ];
}
