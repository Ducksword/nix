{ ... }:
{
  imports = [
    ../../modules/users/default.nix
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];


  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

}
