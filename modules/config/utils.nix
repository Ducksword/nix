{ pkgs, ... }:

{
  # system utils
  environment.systemPackages = with pkgs; [
    # Graphical
    kdePackages.yakuake # Drop down terminal
    kdePackages.partitionmanager
    kdePackages.kcalc # Calculator

    parsec-bin
    
    # Terminal
    just
    nixd
    
  ];
  







  # Enable virtualization
  # VMware
  virtualisation.vmware.host.enable = true;

}