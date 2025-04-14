{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ghostty
  ];

  imports = [
    ./fish
    ./ghostty
  ];
}
