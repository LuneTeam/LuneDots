{ pkgs, inputs, ... }:
{
  imports = [
    ./nixvim
    ./zeditor

    inputs.nixvim.homeManagerModules.nixvim
  ];

  home.packages = with pkgs; [
    zed-editor
  ];
}
