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
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];

  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable firmware updates
  services.fwupd.enable = true;

  # Set your time zone.
  time.timeZone = "America/Detroit";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
}
