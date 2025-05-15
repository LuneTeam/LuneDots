{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    render = {
      explicit_sync = 1;
      explicit_sync_kms = 1;
    };
    opengl = {
      nvidia_anti_flicker = true;
    };
    xwayland = {
      enabled = false;
    };
  };
}
