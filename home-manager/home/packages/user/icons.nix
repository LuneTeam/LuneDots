{ pkgs, ... }:
{
  home.packages = with pkgs; [
    morewaita-icon-theme
  ];
}
