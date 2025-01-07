{ ... }:
{
  users.users.zach = {
    isNormalUser = true;
    description = "zach";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
    ];
  };
}
