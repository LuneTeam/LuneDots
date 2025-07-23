{ user, ... }:
{
  virtualisation = {
    containers.enable = true;

    podman = {
      enable = true;
      dockerCompat = false;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  # qemu
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "${user}" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
