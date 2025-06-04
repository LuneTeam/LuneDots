{
  inputs,
  self,
  ...
}:
let
  homeImports = "${self}/home-manager/profiles/laimick";
  systems = "x86_64-linux";
in
{
  flake.nixosConfigurations = {
    nixos = inputs.nixpkgs.lib.nixosSystem {
      system = systems;
      specialArgs = {
        inherit
          inputs
          self
          systems
          ;
      };

      modules = [
        ./io
        ../packages
        inputs.home-manager.nixosModules.home-manager
        inputs.nix-index-database.nixosModules.nix-index
        {
          home-manager = {
            users.laimick =
              { config, pkgs, ... }:
              (import homeImports {
                inherit
                  config
                  pkgs
                  self
                  inputs
                  systems
                  ;
              });
            extraSpecialArgs = {
              inherit
                inputs
                self
                systems
                ;
            };
            backupFileExtension = ".hm-backup";
          };
        }
      ];
    };
  };
}
