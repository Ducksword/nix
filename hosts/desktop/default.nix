{ pkgs, ... }:
{
  imports = [
    ../../modules/applications/pack/desktop.nix
    ../../modules/core/default.nix
    ../../modules/desktops/default.nix
    ../../modules/games/default.nix
    ../../modules/utils/pack/desktop.nix
    # ../../modules/utils/ollama.nix
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
  virtualisation.libvirtd =
  {
    enable = true;
    qemu.package = pkgs.qemu_full;
    qemu.swtpm.enable = true;
  };
  programs.virt-manager.enable = true;

  environment.systemPackages = with pkgs; [
    parsec-bin
    nvtopPackages.full
    fzf
    fzf-zsh
  ];

  # Enable Vmware
  ## Curently not working
  ##        > Unfortunately, we cannot download file VMware-Workstation-Full-17.6.3-24583834.x86_64.bundle automatically.
  ##        > Please go to https://www.vmware.com/go/downloadworkstation-linux to download it yourself, and add it to the Nix store
  ##  virtualisation.vmware.host.enable = true;

  # nfs mounts
  fileSystems."/mnt/backup" = {
    device = "192.168.0.62:/mnt/user/backup";
    fsType = "nfs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.device-timeout=600"
    ];
  };
}
