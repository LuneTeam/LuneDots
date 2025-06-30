{ ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "FiraCode Nerd Font:size=13";
        term = "foot";
        pad = "0x0";
      };
      bell = {
        urgent = "no";
        notify = "no";
      };
      desktop-notifications = {
        command = "notify-send {title} {body}";
      };
      scrollback = {
        lines = 1000;
      };
      cursor = {
        blink = true;
      };
      colors = {
        alpha = 1;
        background = "101010";
        foreground = "C9C7CD";
        selection-foreground = "101010";
        selection-background = "C9C7CD";
      };
    };
  };
}
