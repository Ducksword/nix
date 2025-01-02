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
  

  # nano
  programs.nano = {
    enable = true;
    syntaxHighlight = true;
    nanorc = 
    "
    set nowrap
    set tabstospaces
    set tabsize 2
    ";
  };





  # Enable virtualization
  # VMware
  virtualisation.vmware.host.enable = true;

}