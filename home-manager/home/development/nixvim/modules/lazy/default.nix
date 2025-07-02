{ ... }: {
  programs.nixvim = {
    plugins = {
      lazydev.enable = true;
      lazy.enable = true;

      blink-cmp.settings = {
        sources.providers = {
          lazydev = {
            name = "LazyDev";
            module = "lazydev.integrations.blink";
          # make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100;
          };
        };
      };
    };
  };
}
