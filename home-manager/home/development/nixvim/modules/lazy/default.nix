{ ... }:
{
  programs.nixvim = {
    plugins = {
      lazydev.enable = true;
      lazy.enable = true;

      blink-cmp.settings = {
        sources.providers = {
          lazydev = {
            name = "LazyDev";
            module = "lazydev.integrations.blink";
            score_offset = 100;
          };
        };
      };
    };
  };
}
