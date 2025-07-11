{ self, ... }:
{
  xdg.configFile."rofi/theme.rasi".text = ''
    * {
      font:                        "FiraCode Nerd Font 12";
      background:                  #161617;
      background-alt:              #E9E9E9;
      foreground:                  #C9C7CD;
      selected:                    #BEBEBE;
      active:                      #999999;
      urgent:                      #808080;
    }
  '';
  xdg.configFile."rofi/config.rasi".text = ''
    configuration {
    	modi:                       "drun,run,filebrowser,window";
      show-icons:                 true;
      display-drun:               "APPS";
      display-run:                "RUN";
      display-filebrowser:        "FILES";
      display-window:             "WINDOW";
      drun-display-format:        "{name}";
      window-format:              "{w} · {c} · {t}";
    }

    window {
      transparency:                "real";
      location:                    center;
      anchor:                      center;
      fullscreen:                  false;
      width:                       1000px;
      x-offset:                    0px;
      y-offset:                    0px;

      enabled:                     true;
      border-radius:               15px;
      cursor:                      "default";
      background-color:            @background;
    }

    mainbox {
      enabled:                     true;
      spacing:                     0px;
      background-color:            transparent;
      orientation:                 horizontal;
      children:                    [ "imagebox", "listbox" ];
    }

    imagebox {
      padding:                     20px;
      background-color:            transparent;
      background-image:            url("${self}/home-manager/home/stylix/wallpaper/anime/4.jpg", height);
      orientation:                 vertical;
      children:                    [ "inputbar", "dummy", "mode-switcher" ];
    }

    listbox {
      spacing:                     20px;
      padding:                     20px;
      background-color:            transparent;
      orientation:                 vertical;
      children:                    [ "message", "listview" ];
    }

    dummy {
      background-color:            transparent;
    }

    inputbar {
      enabled:                     true;
      spacing:                     10px;
      padding:                     15px;
      border-radius:               10px;
      text-color:                  @foreground;
      children:                    [ "textbox-prompt-colon", "entry" ];
    }

    textbox-prompt-colon {
      enabled:                     true;
      expand:                      false;
      str:                         "";
      background-color:            inherit;
      text-color:                  inherit;
    }

    entry {
      enabled:                     true;
      background-color:            inherit;
      text-color:                  inherit;
      cursor:                      text;
      placeholder:                 "Search";
      placeholder-color:           inherit;
    }

    mode-switcher{
      enabled:                     true;
      spacing:                     20px;
      background-color:            transparent;
      text-color:                  @foreground;
    }

    button {
      padding:                     15px;
      border-radius:               10px;
      text-color:                  inherit;
      cursor:                      pointer;
    }

    button selected {
      text-color:                  @foreground;
    }

    listview {
      enabled:                     true;
      columns:                     1;
      lines:                       8;
      cycle:                       true;
      dynamic:                     true;
      scrollbar:                   false;
      layout:                      vertical;
      reverse:                     false;
      fixed-height:                true;
      fixed-columns:               true;

      spacing:                     10px;
      background-color:            transparent;
      text-color:                  @foreground;
      cursor:                      "default";
    }

    element {
      enabled:                     true;
      spacing:                     15px;
      padding:                     8px;
      border-radius:               10px;
      background-color:            transparent;
      text-color:                  @foreground;
      cursor:                      pointer;
    }

    element normal {
      background-color:            inherit;
      text-color:                  inherit;
    }

    element selected {
      text-color:                  @foreground;
    }

    element-icon {
      background-color:            transparent;
      text-color:                  inherit;
      size:                        32px;
      cursor:                      inherit;
    }

    element-text {
      background-color:            transparent;
      text-color:                  inherit;
      cursor:                      inherit;
      vertical-align:              0.5;
      horizontal-align:            0.0;
    }

    message {
      background-color:            transparent;
    }

    textbox {
      padding:                     15px;
      border-radius:               10px;
      text-color:                  @foreground;
      vertical-align:              0.5;
      horizontal-align:            0.0;
    }

    error-message {
      padding:                     15px;
      border-radius:               20px;
      background-color:            @background;
      text-color:                  @foreground;
    }
  '';
}
