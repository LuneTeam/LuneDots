{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      # UI & General Purpose Fonts
      liberation_ttf
      dejavu_fonts
      roboto
      libertinus
      (google-fonts.override { fonts = [ "Inter" ]; })

      # Monospace & Programming Fonts
      jetbrains-mono
      fira-code
      fantasque-sans-mono
      cascadia-code
      maple-mono.NF

      # Nerd Fonts
      nerd-fonts.symbols-only
      nerd-fonts.jetbrains-mono
      nerd-fonts.caskaydia-cove
      nerd-fonts.hack
      nerd-fonts.iosevka
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
      nerd-fonts.dejavu-sans-mono
      nerd-fonts.space-mono

      # Emoji & Symbol Fonts
      noto-fonts-emoji
      twemoji-color-font

      # Icon Fonts
      material-symbols
    ];
  };
}
