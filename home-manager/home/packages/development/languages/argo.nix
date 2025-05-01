{ pkgs, ... }:
{
  home.packages = with pkgs; [
    argo
    argo-workflows
  ];
}
