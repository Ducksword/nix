{ lib, config, ... }:

{
  options.steam.enable = lib.mkEnableOption "enable steam";

  config = lib.mkIf config.steam.enable {
    programs.steam.enable = true;
  };
}
