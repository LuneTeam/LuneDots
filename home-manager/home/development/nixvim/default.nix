{ ... }:
{
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;

    plugins.nvim-snippets.enable = true;
    plugins.nvim-snippets.autoLoad = true;

    lsp.inlayHints.enable = true;
  };
}
