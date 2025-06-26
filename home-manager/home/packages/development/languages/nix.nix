{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
    nix-tree
    nixfmt-rfc-style
  ];
}
