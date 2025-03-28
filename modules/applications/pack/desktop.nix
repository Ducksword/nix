{ ... }:
{
  imports = [
    ../default.nix
  ];
  
  flatpak.enable = true;
  floorp.enable = true;
  solaar.enable = true;
  spotify.enable = true;
  vesktop.enable = true;
}