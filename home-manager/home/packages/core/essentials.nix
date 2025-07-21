{ pkgs, ... }:
{
  home.packages = with pkgs; [
    tree
    fastfetch
    unzip
  ];
}
