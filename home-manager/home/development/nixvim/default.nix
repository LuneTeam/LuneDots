{ inputs, ... }:
{
  imports = [
    ./modules
    ./settings.nix
    inputs.nixvim.homeModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
  };
}
