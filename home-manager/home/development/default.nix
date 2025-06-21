{ inputs, ... }:
{
  imports = [
    ./nixvim
    inputs.nixvim.homeManagerModules.nixvim
  ];
}
