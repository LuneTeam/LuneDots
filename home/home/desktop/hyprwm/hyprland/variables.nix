{
  ...
}:
#let
#  inherit (config.lib.stylix) colors;
#in
{
  wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 0;
      gaps_in = 6;
      gaps_out = 8;
      #col.inactive_border = "0x00${colors.base0F}";
    };
    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 5;
        passes = 1;
        new_optimizations = true;
        xray = true;
      };
      shadow = {
        enabled = true;
        range = 5;
        render_power = 5;
      };
    };
  };
}
