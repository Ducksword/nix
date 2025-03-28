{ lib, config, pkgs, ... }:
{
  options.solaar.enable = lib.mkEnableOption "enable solaar";

  config = lib.mkIf config.solaar.enable {
    # environment.systemPackages = with pkgs; [
    #   solaar
    #   logitech-udev-rules
    # ];
  hardware.logitech.wireless.enable = true;
  hardware.logitech.wireless.enableGraphical = true;
  };
}