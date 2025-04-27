{ pkgs, ... }:
{
  users.users.laimick = {
    isNormalUser = true;
    description = "laimick";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ]; # TODO разобраться с тем что тут и как
  };
}
