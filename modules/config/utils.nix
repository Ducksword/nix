{ pkgs, ... }:

{
  # system utils
  environment.systemPackages = with pkgs; [
    # Graphical
    kdePackages.yakuake # Drop down terminal
    kdePackages.partitionmanager
    kdePackages.kcalc # Calculator

    parsec-bin
    
  ];
  







  # Enable virtualization
  # VMware
  virtualisation.vmware.host.enable = true;

}