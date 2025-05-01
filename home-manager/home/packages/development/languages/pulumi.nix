{ pkgs, ... }:
{
  home.packages = with pkgs; [
    pulumi
    pulumiPackages.pulumi-go
  ];
}
