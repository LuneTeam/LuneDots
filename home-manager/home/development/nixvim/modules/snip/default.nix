{ ... }: {
  programs.nixvim = {
    plugins.luasnip.enable = true;
    plugins.friendly-snippets.enable = true;
  };
}
