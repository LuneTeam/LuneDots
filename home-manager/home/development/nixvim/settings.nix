{ ... }:
{
  imports = [
    ./modules
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    opts = {
      number = true;
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };
  };
}
