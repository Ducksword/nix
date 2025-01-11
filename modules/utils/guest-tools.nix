{ config, lib, ... }:

{
  options.guestTools.enable = lib.mkEnableOption "virtualisation guest tools";

  config = lib.mkIf config.guestTools.enable {
    # QEMU/KVM Guest Tools
    services.qemuGuest.enable = true;
    services.spice-vdagentd.enable = true;

    # Enable hardware acceleration and 3D support
    hardware.graphics = {
      enable = true;
    };
  };
}