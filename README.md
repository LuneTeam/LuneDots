![This image did not load](./.github/assets/screenshot/LuneDots.png)

<div align="center">
    <h1>Screenshots</h1>
    <h4></h4>
</div>

![This image did not load](./.github/assets/screenshot/pictures.png)

<div align="center">
    <h2>Description</h2>
    <h4></h4>
</div>

<details>
<summary>Installation Guide</summary>

1. **Identify the target disk**:

   ```bash
   lsblk
   ```

   Note the disk (e.g., `/dev/nvme0n1`). Double-check to avoid data loss.

2. **Obtain a disko layout**:
   Clone a repository with a `disko.nix` file or create your own:

   ```bash
   git clone https://github.com/LinuxFamily/LuneDots
   ```

   Ensure `disko.nix` matches your disk and partition needs.

3. **Format the disk**:
   Run `disko` to partition and format the disk (this erases all data):

   ```bash
   sudo nix run github:nix-community/disko -- --mode disko ./LuneDots/disko.nix --arg device '"/dev/nvme0n1"'
   ```

4. **Generate hardware configuration**:
   Create a `hardware-configuration.nix` file:

   ```bash
   sudo nixos-generate-config --no-filesystems --root .
   ```

5. **Set up host configuration**:
   Copy the generated file to your host directory:

   ```bash
   cp ./etc/nixos/hardware-configuration.nix ./LuneDots/hosts/io/
   ```

6. **Install NixOS**:
   Install the system to `/mnt` using the flake:

   ```bash
   nixos-install --root /mnt --flake ./LuneDots
   ```

   Set a root password with `passwd` or configure SSH keys if prompted.

7. **Reboot**:
   Unmount filesystems and reboot:
   ```bash
   umount -R /mnt
   reboot
   ```
   </details>

<details>
<summary>Technologies</summary>

- **Hyprland**: Dynamic tiling Wayland compositor that looks great.
  [github.com/hypwm/hyprland](https://github.com/hypwm/hyprland)
- **Hyprpaper**: Wallpaper tool for Hyprland.
  [github.com/hyprwm/hyprpaper](https://github.com/hyprwm/hyprpaper)
- **Hyprlock**: Hyprland's simple, yet multi-threaded and GPU-accelerated screen locking utility.
  [github.com/hyprwm/hyprlock](https://github.com/hyprwm/hyprlock)
- **Hyprcontrib**: grimblast - A Hyprland version of Grimshot.
  [github.com/hyprwm/contrib](https://github.com/hyprwm/contrib)
- **Quickshell**: Universal bar for C++ and Qt6.
  [github.com/quickshell-mirror/quickshell](https://github.com/quickshell-mirror/quickshell)
- **Foot**: Fast wayland terminal with xterm support.
  [codeberg.org/dnkl/foot](https://codeberg.org/dnkl/foot)
- **Zen-Browser**: Firefox fork for a nicer browsing experience.
  [github.com/zen-browser/desktop](https://github.com/zen-browser/desktop)

  </details>
<div align="center">
    <h2> Thanks! </h2>
    <h4></h4>
</div>

* vaxry - For founding such a high-quality Wayland compositor
* end-4 - For showing how beautiful Hyprland can be
* fufexan - For providing excellent support for Nix in Hyprland
* mic92 - For showing how complex Nix configuration can be
* outfoxxed - For creating quickshell
