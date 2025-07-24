{ inputs, ... }:
{
  imports = [
    ./settings.nix

    inputs.nixvim.homeManagerModules.nixvim
  ];
}
