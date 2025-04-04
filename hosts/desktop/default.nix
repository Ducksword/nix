{ pkgs, ... }:
{
  imports = [
    ../../modules/applications/pack/desktop.nix
    ../../modules/core/default.nix
    ../../modules/desktops/default.nix
    ../../modules/games/default.nix
    ../../modules/utils/pack/desktop.nix

  ];

  # Desktop
  kde.enable = true;

  # programs.obs-studio = {
  #   enable = true;
  #   plugins = [ pkgs.obs-studio-plugins.obs-vaapi ];
  # };

  # Change kernel version
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Enable zram
  zramSwap.enable = true;

  # Virtmanager
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  environment.systemPackages = with pkgs; [
    parsec-bin
    nvtopPackages.full
  ];

  virtualisation.vmware.host.enable = true;

  # nfs mounts
  fileSystems."/mnt/backup" = {
    device = "192.168.0.63:/mnt/user/backup";
    fsType = "nfs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.device-timeout=600"
    ];
  };
}
