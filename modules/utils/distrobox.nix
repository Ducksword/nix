{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.distrobox.enable = lib.mkEnableOption "enable distrobox";

  config = lib.mkIf config.distrobox.enable {
    # Enable podman and distrobox
    virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };

    environment.systemPackages = [
      pkgs.distrobox
      pkgs.boxbuddy
    ];

  };
}
