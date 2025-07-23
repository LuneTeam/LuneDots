{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 0;
      gaps_in = 6;
      gaps_out = 8;
    };

    decoration = {
      rounding = 12;

      blur = {
        enabled = true;
        size = 5;
        passes = 1;
        new_optimizations = true;
      };

      shadow = {
        enabled = true;
        range = 5;
        render_power = 2;
      };
    };
  };
}
