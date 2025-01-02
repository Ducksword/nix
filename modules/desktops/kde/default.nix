{ ... }:
{
  imports = [
    ./yakuake.nix # Drop down terminal
    ./kcalc.nix
    ./partitionmanager.nix
  ];

  partitionmanager.enable = true;
  kcalc.enable = true;
  yakuake.enable = true; # Drop down terminal
}
