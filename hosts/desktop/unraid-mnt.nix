{
  fileSystems."/home/zach/backup" = {
    device = "192.168.0.62:/mnt/user/backup";
    fsType = "nfs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.device-timeout=600"
    ];
  };
}
