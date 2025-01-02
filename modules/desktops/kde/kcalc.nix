{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    kcalc.enable = lib.mkEnableOption "enable kcalc";
  };

  config = lib.mkIf config.kcalc.enable {
    environment.systemPackages = with pkgs; [
      kdePackages.kcalc
    ];
  };
}
