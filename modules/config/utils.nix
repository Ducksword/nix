{ pkgs, ... }:

{
  # system utils
  environment.systemPackages = with pkgs; [
    # Graphical
    kdePackages.yakuake

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


  # Enable zsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      # System management
      sw = "sudo nixos-rebuild switch --flake '/home/zach/nix#desktop'";

    };  
    ohMyZsh = {
      enable = true;
      theme = "frisk";
    };
  };


  # Enable virtualization
  # VMware
  virtualisation.vmware.host.enable = true;

}