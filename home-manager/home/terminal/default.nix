{ pkgs, ... }:
{
  home.packages = with pkgs; [
    foot
  ];

  imports = [
    ./fish
    ./foot
  ];
}
