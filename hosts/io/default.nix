{ ... }:
{
  imports = [
    ../../system/default.nix
    ./hardware-configuration.nix
  ];

  environment.variables.NH_FLAKE = "/home/laimick/LuneDots";
}
