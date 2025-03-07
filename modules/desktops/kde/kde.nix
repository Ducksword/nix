{ config, lib, ... }:

{
  imports = [
    ./yakuake.nix # Drop down terminal
    ./kcalc.nix
    ./partitionmanager.nix
  ];

  options.kde.enable = lib.mkEnableOption "enable kde";

  config = lib.mkIf config.kde.enable {

    # options
    partitionmanager.enable = true;
    kcalc.enable = true;
    yakuake.enable = false; # Drop down terminal


    # Enable networking
    networking.networkmanager.enable = true;

    # Enable the X11 windowing system.
    # You can disable this if you're only using the Wayland session.
    services.xserver.enable = true;

    # Enable the KDE Plasma Desktop Environment.
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # If you want to use JACK applications, uncomment this
      #jack.enable = true;

      # use the example session manager (no others are packaged yet so this is enabled by default,
      # no need to redefine it in your config for now)
      #media-session.enable = true;
    };

    # Enable touchpad support (enabled default in most desktopManager).
    # services.xserver.libinput.enable = true;
  };
}