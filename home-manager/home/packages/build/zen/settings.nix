{ inputs, ... }:
{
  imports = [ inputs.zen-nebula.homeModules.default ];

  zen-nebula = {
    enable = true;
    profile = "laimick";
  };
}
