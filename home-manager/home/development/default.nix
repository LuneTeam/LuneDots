{ pkgs, ... }:
{
  imports = [
    ./nvim
    ./zeditor
  ];

  home.packages = with pkgs; [
    neovim
    zed-editor
  ];
}
