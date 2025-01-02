{ ... }:
{
  imports = [
    ./steam.nix
    ./lutris.nix
  ];

  steam.enable = true;
}