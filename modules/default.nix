{ ... }:
{
  imports = [
    ./desktops/default.nix
    ./games/default.nix
    ./users/default.nix

    
    ./utils/graphical/default.nix
    ./utils/terminal/default.nix
  ];

  # Enable modules
  zsh.enable = true;
  editor.enable = true;

  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable firmware updates
  services.fwupd.enable = true;

}
