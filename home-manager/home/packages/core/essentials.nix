{ pkgs, ... }:
{
  home.packages = with pkgs; [
    tree
    unzip
  ];
}
