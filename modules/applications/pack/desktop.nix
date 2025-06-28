{ ... }:
{
  imports = [
    ../default.nix
  ];
  
  flatpak.enable = true;
  floorp.enable = false;
  solaar.enable = true;
  spotify.enable = true;
  vesktop.enable = true;
}
