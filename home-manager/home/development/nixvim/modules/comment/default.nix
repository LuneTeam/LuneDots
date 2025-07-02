{ ... }:
{
  programs.nixvim = {
    plugins.todo-comments.enable = true;
    plugins.comment.enable = true;
  };
}
