{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    plugins = with pkgs.fishPlugins; [
      {
        name = "fzf-fish";
        src = fzf-fish.src;
      }
      {
        name = "forgit";
        src = forgit.src;
      }
      {
        name = "grc";
        src = grc.src;
      }
      {
        name = "pisces";
        src = pisces.src;
      }
      {
        name = "bass";
        src = bass.src;
      }
    ];
  };
  home.packages = with pkgs; [
    grc
  ];
  programs.nix-index = {
    enable = true;
    enableFishIntegration = true;
  };
  programs.command-not-found.enable = false;
}
