{ ... }:
{
  imports = [
    ../../modules/utils/terminal/default.nix
    ../../modules/utils/graphical/default.nix

    # kde desktop
    ../../modules/desktops/kde/default.nix

    ../../modules/config/games.nix
    ../../modules/config/utils.nix
  ];

  # utils/terminal
  distrobox.enable = true;
  zsh.enable = true;
  editor.enable = true;

  # utils/graphical
  vmware.enable = true;
  parsec.enable = true;
}