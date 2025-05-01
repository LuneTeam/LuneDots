{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    monitor = "DP-1,2560x1440@170,0x0,1";
    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      force_default_wallpaper = 0;
      vrr = 2;
      middle_click_paste = false;
    };
    animations = {
      enabled = true;
      first_launch_animation = false;
    };
    ecosystem = {
      no_update_news = true;
      no_donation_nag = true;
    };
    windowrulev2 = [
      "float, class:^(rofi)$"
      "center, class:^(rofi)$"
    ];
  };
}
