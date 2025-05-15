{ ... }:
{
  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  networking.wireguard.enable = true;

  networking.nameservers = [ "8.8.8.8" ];
}
