{ ... }: {
  imports = [
    ./lang
  ];

  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
      };
      goto-preview.enable = true;
      trouble.enable = true;
    };
  };
}
