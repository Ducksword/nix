{ lib, config, ... }:

let
  cfg = config.desktops.kde;

in
{
  options.desktops.kde.enable =
    lib.mkEnableOption "Enable KDE desktop environment";

  config = lib.mkIf cfg.enable {
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;
  };
}

