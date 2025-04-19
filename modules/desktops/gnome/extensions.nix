{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.gnomeExtensions.enable = lib.mkEnableOption "enable gnome extensions";

  config = lib.mkIf config.gnomeExtensions.enable {
    environment.systemPackages = with pkgs.gnomeExtensions; [
      vitals
      caffeine
    ];
  };
}
