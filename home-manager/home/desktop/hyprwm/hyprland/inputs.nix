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
      no_hardware_cursors = 0;
      no_break_fs_vrr = 0;
      hide_on_touch = false;
    };
  };
}
