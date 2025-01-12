{ ... }:
{
  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "no";
    settings.PasswordAuthentication = false;
  };

  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];
}