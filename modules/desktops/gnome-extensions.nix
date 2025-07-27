{ lib, config, pkgs, ... }:

let
  cfg = config.desktops.gnome;

in
{
  options = {
    desktops.gnome = {

      enableExtensions = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable gnome extensions";
      };

    };
  };

  config = lib.mkIf cfg.enableExtensions {
    environment.systemPackages = with pkgs; [
      # extensions
      gnomeExtensions.blur-my-shell
      gnomeExtensions.caffeine
      gnomeExtensions.dash-to-dock
      gnomeExtensions.vitals

      # packages
      gnome-extension-manager
      gnome-tweaks
      ptyxis
    ];

    environment.gnome.excludePackages = with pkgs; [
      gnome-console
    ];
  };
}
