{ ... }:
{
  imports = [
    ../modules/utils/terminal/default.nix
    ../modules/config/games.nix
    ../modules/config/utils.nix
  ];

  distrobox.enable = true;
  zsh.enable = true;
}