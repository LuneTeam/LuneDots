{ pkgs, ... }:
{
  home.packages = with pkgs; [
    simple-completion-language-server
  ];
}
