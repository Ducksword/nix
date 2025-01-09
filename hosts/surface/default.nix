{ pkgs, ... }:
{
  imports = [
    ../../modules/core/default.nix
    ../../modules/desktops/default.nix
    ../../modules/utils/pack/desktop.nix
    ../../modules/applications/pack/desktop.nix
  ];
  # Desktop
  gnome.enable = true;

  # Enable zram
  zramSwap.enable = true;
}
