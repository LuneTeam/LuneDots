{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lsd
    tree
    fastfetch
    unzip
  ];
}
