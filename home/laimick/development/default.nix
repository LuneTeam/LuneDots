{ pkgs, ... }:
{
  imports = [
    ./nvim
    ./zeditor
    # ./vscode
  ];

  home.packages = with pkgs; [
    neovim
    zed-editor
    # vscode
  ];
}
