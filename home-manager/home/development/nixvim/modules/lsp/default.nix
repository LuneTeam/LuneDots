{ ... }:
{
  imports = [
    ./lang
  ];

  programs.nixvim = {
    plugins.lsp.enable = true;
  };
}
