{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
    nixfmt-rfc-style
  ];
}
