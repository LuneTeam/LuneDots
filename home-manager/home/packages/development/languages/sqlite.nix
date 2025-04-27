{ pkgs, ... }:
{
  home.packages = with pkgs; [
    sqlite
    sqlitebrowser
  ];
}
