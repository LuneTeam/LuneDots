{ ... }:
{
  programs.dconf.enable = true;

  services.mpd = {
    enable = true;
    musicDirectory = "/home/laimick/music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';

    network.listenAddress = "any";
  };
}
