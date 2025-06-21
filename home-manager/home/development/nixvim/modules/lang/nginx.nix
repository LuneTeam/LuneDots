{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.nginx_language_server.enable = true;
  };
}
