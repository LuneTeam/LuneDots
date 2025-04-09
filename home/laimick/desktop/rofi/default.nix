{ pkgs, ... }: {
    imports = [
      ./settings.nix
    ];
    home.packages = with pkgs; [
        rofi-wayland
    ];
}
