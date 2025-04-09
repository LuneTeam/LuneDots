{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$Mod" = "SUPER";

    bindm = [
      "$Mod, mouse:272, movewindow"
      "$Mod, mouse:273, resizewindow"
    ];
    bind = [
      "$Mod, Q, killactive"
      "$Mod, T, togglefloating"
      "$Mod, G, exec, ghostty"
      "$Mod, H, exec, hyprpicker -a"
      "$Mod, R, exec, rofi -show run"
      ", PRINT, exec, grimblast copy screen"
      "$Mod, K, exec, kitty"

      "$Mod, 1, workspace, 1"
      "$Mod, 2, workspace, 2"
      "$Mod, 3, workspace, 3"
      "$Mod, 4, workspace, 4"
      "$Mod, 5, workspace, 5"
      "$Mod, 6, workspace, 6"
      "$Mod, 7, workspace, 7"
      "$Mod, 8, workspace, 8"
      "$Mod, 9, workspace, 9"
      "$Mod, 0, workspace, 10"

      "$Mod ALT, left, movewindow, l"
      "$Mod ALT, right, movewindow, r"
      "$Mod ALT, up, movewindow, u"
      "$Mod ALT, down, movewindow, d"

      "$Mod SHIFT, 1, movetoworkspace, 1"
      "$Mod SHIFT, 2, movetoworkspace, 2"
      "$Mod SHIFT, 3, movetoworkspace, 3"
      "$Mod SHIFT, 4, movetoworkspace, 4"
      "$Mod SHIFT, 5, movetoworkspace, 5"
      "$Mod SHIFT, 6, movetoworkspace, 6"
      "$Mod SHIFT, 7, movetoworkspace, 7"
      "$Mod SHIFT, 8, movetoworkspace, 8"
      "$Mod SHIFT, 9, movetoworkspace, 9"
      "$Mod SHIFT, 0, movetoworkspace, 10"

      "$Mod Ctrl, 1, movetoworkspacesilent, 1"
      "$Mod Ctrl, 2, movetoworkspacesilent, 2"
      "$Mod Ctrl, 3, movetoworkspacesilent, 3"
      "$Mod Ctrl, 4, movetoworkspacesilent, 4"
      "$Mod Ctrl, 5, movetoworkspacesilent, 5"
      "$Mod Ctrl, 6, movetoworkspacesilent, 6"
      "$Mod Ctrl, 7, movetoworkspacesilent, 7"
      "$Mod Ctrl, 8, movetoworkspacesilent, 8"
      "$Mod Ctrl, 9, movetoworkspacesilent, 9"
      "$Mod Ctrl, 0, movetoworkspacesilent, 10"

      "$Mod, up, movefocus, u"
      "$Mod, right, movefocus, r"
      "$Mod, down, movefocus, d"
      "$Mod, left, movefocus, l"
    ];
  };
}
