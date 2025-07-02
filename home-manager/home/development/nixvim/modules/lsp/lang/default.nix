{ ... }: {
  imports = [
    ./ansible.nix
    ./bash.nix
    ./docker.nix
    ./golang.nix
    ./nginx.nix
    ./nix.nix
    ./postgresql.nix
    ./terraform.nix
    ./yaml.nix
  ];
}
