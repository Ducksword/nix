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
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOo4nj5BtR2rHnrs+iuTQsE+UQtt2D1kqVdS1JKeDJ6I Diabotek@proton.me"
    ];
  };
}