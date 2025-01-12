{ ... }:
{
  # configure users
  users.users.zach = {
    isNormalUser = true;
    description = "zach";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
    ];
    initialPassword = "123";
  };
}