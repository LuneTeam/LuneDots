{ ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Cascadia Code:size=13";
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
        lines = 5000;
      };
      cursor = {
        blink = true;
      };
      colors = {
        alpha = 1;
        background = "101012";
        foreground = "C9C7CD";
        selection-foreground = "101012";
        selection-background = "C9C7CD";
      };
    };
  };
}
