{ ... }:
{
  imports = [
    ../../modules/core/default.nix
    ../../modules/desktops/default.nix
    ../../modules/utils/pack/desktop.nix
    ../../modules/applications/pack/desktop.nix

    ./disko.nix
  ];
  # Desktop
  gnome.enable = true;

  # Enable zram
  zramSwap.enable = true;

  # guest tools
  guestTools.enable = true;
}