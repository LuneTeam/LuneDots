{ inputs, pkgs, ... }: {
  home.packages = [
    pkgs.kitty
  ];

  imports = [
    ./fish
    ./kitty
  ];
}
