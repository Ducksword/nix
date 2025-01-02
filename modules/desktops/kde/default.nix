{ ... }:
{
  imports = [
    ./yakuake.nix # Drop down terminal
    ./kcalc.nix
  ];

  kcalc.enable = true;
  yakuake.enable = true; # Drop down terminal
}
