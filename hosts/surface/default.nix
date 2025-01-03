{ ... }:
{
  imports = [
    ../../modules/default.nix
    ../../modules/utils/graphical
  ];

  vscode.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];

}
