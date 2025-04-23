{
  inputs,
  self,
  ...
}:
let
  homeImports = "${self}/home/profiles/laimick";
in
{
  flake.nixosConfigurations = {
    nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs self; };
      modules = [
        ./io/default.nix
        inputs.home-manager.nixosModules.home-manager

        {
          home-manager = {
            users.laimick = import homeImports;
            extraSpecialArgs = { inherit inputs; };
            backupFileExtension = ".hm-backup";
          };
        }
      ];
    };
  };
}
