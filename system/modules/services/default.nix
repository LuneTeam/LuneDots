{ ... }:
{
  services.resolved.enable = true;
  services.resolved.dnssec = "allow-downgrade";
  services.resolved.fallbackDns = [
    "8.8.8.8"
    "1.1.1.1"
  ];

  programs.dconf.enable = true;
}
