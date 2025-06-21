{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.qmlls.enable = true;
  };
}
