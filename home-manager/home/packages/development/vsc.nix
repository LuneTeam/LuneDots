{ pkgs, ... }:
{
  home.packages = with pkgs; [
    git

    mergiraf
  ];

  programs.git = {
    enable = true;
    userName = "MounTemed";
    userEmail = "LuneFamily@wr.do";
  };
}
