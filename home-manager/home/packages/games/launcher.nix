{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lutris
    (lutris.override {
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stagingFull
        pkgs.winetricks
      ];
    })

    heroic

    steam
  ];
}
