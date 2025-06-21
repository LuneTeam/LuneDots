{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.nixd.enable = true;
    plugins.lsp.servers.nil_ls.enable = true;
  };
}
