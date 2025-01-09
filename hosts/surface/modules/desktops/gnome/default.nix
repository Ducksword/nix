{ config, lib, ... }:
{
  options.gnome.enable = lib.mkEnableOption "enable gnome";

  config = lib.mkIf config.gnome.enable {
    imports = [
      ./gnome.nix
    ];
  };
}