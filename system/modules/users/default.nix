{ pkgs, ... }:
{
  users.users.laimick = {
    isNormalUser = true;
    description = "laimick";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };
}
