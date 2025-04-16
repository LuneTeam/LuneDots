{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.symbols-only
    nerd-fonts.hack
    twemoji-color-font
    noto-fonts-emoji
    fantasque-sans-mono
    maple-mono.CN
    maple-mono.NF
    cascadia-code
    dejavu_fonts
    noto-fonts
  ];
}
