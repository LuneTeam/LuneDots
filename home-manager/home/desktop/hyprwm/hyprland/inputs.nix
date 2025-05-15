{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "us,ru";
      kb_options = "grp:alt_shift_toggle";
      repeat_delay = 450;
      touchdevice = {
        enabled = false;
      };
    };
    cursor = {
      no_hardware_cursors = 2;
      no_break_fs_vrr = 0;
      enable_hyprcursor = true;
      hide_on_touch = false;
    };
  };
}
