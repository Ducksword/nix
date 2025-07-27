{ lib, config, ... }:

let
  cfg = config.desktops.gnome;

in
{
  options = {
    desktops.gnome = {

      enable = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable gnome desktop";
      };

    };
  };

  config = lib.mkIf cfg.enable {
    services.displayManager.gdm.enable = true;
    services.desktopManager.gnome.enable = true;
  };
}
