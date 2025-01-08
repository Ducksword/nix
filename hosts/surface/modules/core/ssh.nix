{ ... }:
{
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];
}