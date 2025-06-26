{ inputs, ... }:
{
  imports = [
    ./modules
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    
    viAlias = true;
    vimAlias = true;
  };
}
