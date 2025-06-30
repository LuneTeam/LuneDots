{ pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol # todo remove -> quickshell
  ];
}
