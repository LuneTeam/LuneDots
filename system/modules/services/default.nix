{ self, ... }:
{
  programs.dconf.enable = true;

  services.mpd = {
    enable = true;
    musicDirectory = "${self}../music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';

    network.listenAddress = "any";
  };

  services.zapret = {
    enable = true;
    params = [
      "--split-pos=1 --oob"
      "--tlsrec=sniext+1 --split-pos=1,midsld --fix-seg"
      "--dpi-desync=multidisorder --dpi-desync-split-pos=1,midsld"
      "--dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
      "--dpi-desync=fakedsplit --dpi-desync-ttl=2 --dpi-desync-split-pos=1"
      "--dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
    ];
    whitelist = [
      "youtube.com"
      "youtu.be"
    ];
  };
}
