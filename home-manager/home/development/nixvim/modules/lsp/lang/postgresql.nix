{ ... }:
{
  programs.nixvim = {
    plugins.lsp.servers.postgres_lsp.enable = true;
  };
}
