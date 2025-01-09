{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.yakuake.enable = lib.mkEnableOption "enable yakuake";

  config = lib.mkIf config.yakuake.enable {
    environment.systemPackages = with pkgs; [
      yakuake
    ];
  };
}
