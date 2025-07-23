{ ... }:
{
  networking = {
    hostName = "nixos";
    useDHCP = false;
    dhcpcd.enable = false;

    firewall.enable = true;

    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
      "8.8.8.8"
      "8.8.4.4"
    ];

    networkmanager = {
      enable = true;
      dns = "none";
    };
  };
}
