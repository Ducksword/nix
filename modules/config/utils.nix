{ pkgs, ... }:

{
  # system utils
  environment.systemPackages = with pkgs; [
    # Graphical
    kdePackages.partitionmanager
    
  ];
  
}