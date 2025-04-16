{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    render = {
      explicit_sync = 2;
      explicit_sync_kms = 2;
      expand_undersized_textures = true;
    };
    opengl = {
      nvidia_anti_flicker = true;
    };
    xwayland = {
      enabled = false;
    };
  };
}
