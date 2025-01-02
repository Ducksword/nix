{ ... }:
{
  imports = [
    # imports all users
    ./users/default.nix

    # modules
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
