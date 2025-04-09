{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.8";
      dynamic_background_opacity = "yes";


      cursor = "#c6d0f5";
      cursor_text_color = "#303446";

      color0  = "#303446";
      color1  = "#e78284";
      color2  = "#81c8be";
      color3  = "#e5c890";
      color4  = "#8caaee";
      color5  = "#f4b8e4";
      color6  = "#8caaee";
      color7  = "#b5bfe2";

      color8  = "#51576d";
      color9  = "#e78284";
      color10 = "#81c8be";
      color11 = "#e5c890";
      color12 = "#8caaee";
      color13 = "#f4b8e4";
      color14 = "#8caaee";
      color15 = "#c6d0f5";

      font_family = "fira-code";
      font_size = "12.0";
      adjust_line_height = "100%";
      disable_ligatures = "never";
      scrollback_lines = "10000";
      enable_audio_bell = "no";
      window_padding_width = "0";

      confirm_os_window_close = 0;
    };
    extraConfig = ''
      mouse_hide_wait 2.0
    '';
  };
}
