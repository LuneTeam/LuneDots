{ ... }:
{
  wayland.windowManager.hyprland.enable = true;
  imports = [
    ./variables.nix
    ./inputs.nix
    ./binds.nix
    ./settings.nix
    ./animations.nix
    ./render.nix
  ];
}
