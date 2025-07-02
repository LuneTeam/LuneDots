{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.nil_ls.enable = true;
    plugins.lsp.servers.nixd.enable = true;
  };
}
