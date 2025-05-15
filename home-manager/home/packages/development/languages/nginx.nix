{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nginx-language-server
  ];
}
