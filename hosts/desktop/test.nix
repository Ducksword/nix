{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    parsec-bin
  ];

  virtualisation.vmware.host.enable = true;
}