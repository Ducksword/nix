{ ... }:
{
  imports = [
    ../../modules/utils/terminal/default.nix
    ../../modules/utils/graphical/default.nix

    ../../modules/config/games.nix
    ../../modules/config/utils.nix
  ];

  distrobox.enable = true;
  zsh.enable = true;
  editor.enable = true;
  
}