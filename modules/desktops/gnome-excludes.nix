{
  config,
  pkgs,
  lib,
  ...
}:

let
  cfg = config.desktops.gnome;

in
{
  options = {
    desktops.gnome = {

      disableExtraPackages = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Disables extra gnome packages";
      };

    };
  };

  config = lib.mkIf cfg.disableExtraPackages {
    environment.gnome.excludePackages = with pkgs; [
      decibels
      epiphany
      geary
      gnome-calendar
      gnome-contacts
      gnome-maps
      gnome-music
      gnome-text-editor
      gnome-tour
      gnome-weather
      simple-scan
      snapshot
      totem
    ];
  };

}
