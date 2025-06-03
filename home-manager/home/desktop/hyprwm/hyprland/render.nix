{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    render = {
      explicit_sync = 1;
      explicit_sync_kms = 1;
    };
    xwayland = {
      enabled = false;
    };
  };
}
