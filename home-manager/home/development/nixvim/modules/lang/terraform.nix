{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.terraformls.enable = true;
  };
}
