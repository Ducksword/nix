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

  options.kde.enable = lib.mkEnableOption "enable kde";

  config = lib.mkIf config.kde.enable {

    partitionmanager.enable = true;
    kcalc.enable = true;
    yakuake.enable = true; # Drop down terminal
    
  };
}
