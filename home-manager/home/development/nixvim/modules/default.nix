{ ... }:
{
  programs.nixvim = {
    enable = true;

    plugins = {
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          nil_ls.enable = true;
        };
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          mapping = {
            "<C-b>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.abort()";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };
          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
          ];
        };
      };
      luasnip.enable = true;
    };

    opts = {
      number = true;
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };
  };
}
