{ pkgs, ... }:

{
  # Enable podman and distrobox
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  environment.systemPackages = [pkgs.distrobox];

}