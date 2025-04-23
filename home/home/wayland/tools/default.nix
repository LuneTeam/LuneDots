{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    wf-recorder
    dunst
  ];
}
