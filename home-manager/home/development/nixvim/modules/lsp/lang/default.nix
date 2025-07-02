{ ... }: {
  imports = [
    ./ansible.nix
    ./bash.nix
    ./docker.nix
    ./golang.nix
    ./nginx.nix
    ./nix.nix
    ./terraform.nix
    ./yaml.nix
  ];
}
