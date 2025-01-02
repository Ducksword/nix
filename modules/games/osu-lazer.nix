{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    osu-lazer.enable = lib.mkEnableOption "enable osu-lazer";
  };

  config = lib.mkIf config.osu-lazer.enable {
    environment.systemPackages = [ pkgs.osu-lazer ];
  };
}
