{ lib, config, ... }:

let
  cfg = config.services.unraidMnt;

in
{
  options.services.unraidMnt.enable =
    lib.mkEnableOption "Enables unraid backup mnt to /home/zach/backup";

  config = lib.mkIf cfg.enable {
    fileSystems."/home/zach/backup" = {
      device = "192.168.0.62:/mnt/user/backup";
      fsType = "nfs";
      options = [
        "x-systemd.automount"
        "noauto"
        "x-systemd.device-timeout=600"
      ];
    };
  };
}
