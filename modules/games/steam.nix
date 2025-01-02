{ lib, config, ... }:

{
  options = {
    steam.enable =
      lib.mkEnableOption "enable steam";
  };

  config = lib.mkIf config.steam.enable {
    programs.enable.steam = true;
  };
}