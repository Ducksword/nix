{ lib, config, pkgs, ... }:
{
  options.spotify.enable = lib.mkEnableOption "enable spotify";

  config = lib.mkIf config.spotify.enable {
    environment.systemPackages = with pkgs; [
      spotify
    ];
  };
}