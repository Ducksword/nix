{ ... }:
{
  imports = [
    # utils
    ../../modules/utils/terminal/default.nix
    ../../modules/utils/graphical/default.nix

    # kde desktop
    ../../modules/desktops/kde/default.nix

    # games
    ../../modules/games/default.nix

    ../../modules/config/games.nix
  ];

  # utils/terminal
  distrobox.enable = true;
  zsh.enable = true;
  editor.enable = true;

  # utils/graphical
  vmware.enable = true;
  parsec.enable = true;

  # games
  lutris.enable = true;
  prismlauncher.enable = true;
}