{ ... }:
{
  imports = [
    ./ansible.nix
    ./argo.nix
    ./go.nix
    ./nginx.nix
    ./nix.nix
    ./node.nix
    ./podman.nix
    ./postgresql.nix
    ./qt.nix
    ./terraform.nix
  ];
}
