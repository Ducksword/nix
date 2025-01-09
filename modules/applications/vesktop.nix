{ lib, config, pkgs, ... }:
{
  options.vesktop.enable = lib.mkEnableOption "enable vesktop";

  config = lib.mkIf config.vesktop.enable {
    environment.systemPackages = with pkgs; [
      vesktop
    ];
  };
}