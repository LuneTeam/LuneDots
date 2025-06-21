{ ... }: {
  imports = [
   ./cmp
   ./colorscheme
   ./flash
   ./lang
   ./lsp
   ./lualine
   ./markdown-preview
   ./none-ls
   ./notify
   ./nvim-tree
   ./nvim-web-devicons
   ./snacks
   ./snippets
   ./telescope
   ./todo-comments
   ./treesitter

   ./keymaps.nix
   ./options.nix
   ./plugins.nix
  ];

  programs.nixvim.enable = true;
}

