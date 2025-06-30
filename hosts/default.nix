{
  inputs,
  self,
  ...
}:
let
  homeImports = "${self}/home-manager/profiles/${user}";
  systems = "x86_64-linux";
  user = "laimick"; # Change pls
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
          user
          ;
      };

      modules = [
        ./io
        #../packages TODO
        inputs.home-manager.nixosModules.home-manager
        inputs.nix-index-database.nixosModules.nix-index
        {
          home-manager = {
            users.${user} =
              { config, pkgs, ... }:
              (import homeImports {
                inherit
                  config
                  pkgs
                  self
                  inputs
                  systems
                  user
                  ;
              });
            extraSpecialArgs = {
              inherit
                inputs
                self
                systems
                user
                ;
            };
            backupFileExtension = ".hm-backup";
          };
        }
      ];
    };
  };
}
