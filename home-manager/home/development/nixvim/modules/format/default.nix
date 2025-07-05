{ ... }:
{
  programs.nixvim = {
    plugins.conform-nvim.enable = true;
    plugins.lsp-format.enable = true;
    plugins.none-ls.enable = true;
  };
}
