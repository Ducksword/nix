{
  pkgs,
  lib,
  config,
  ...
}:

{
  imports = [
    ./yakuake.nix # Drop down terminal
    ./kcalc.nix
    ./partitionmanager.nix
    ./kde.nix
  ];

  partitionmanager.enable = true;
  kcalc.enable = true;
  yakuake.enable = false; # Drop down terminal
}
