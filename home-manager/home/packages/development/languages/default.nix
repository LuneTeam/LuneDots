{ ... }:
{
  imports = [
    ./ansible.nix
    ./argo.nix
    ./go.nix
    ./k8s.nix
    ./nix.nix
    ./node.nix
    ./podman.nix
    ./postgresql.nix
    ./pulumi.nix
    ./sqlite.nix
    ./terraform.nix
    ./zig.nix
  ];
}
