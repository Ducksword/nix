{ lib, config, pkgs, ... }:
{
  options.floorp.enable = lib.mkEnableOption "enable floorp";

  config = lib.mkIf config.floorp.enable {
    environment.systemPackages = with pkgs; [
      floorp
    ];
  };
}