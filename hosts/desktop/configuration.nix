# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Nix settings
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  # Unfree packages
  nixpkgs.config.allowUnfree = true;

  # Btrfs mount options
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [
      "compress=zstd"
      "noatime"
    ];
    "/home/zach/.var/app".options = [ "compress=zstd" ];
  };

  networking.hostName = "desktop"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "America/Detroit";

  apps = {
    vscode.enable = true;
  };

  # Enable the GNOME Desktop Environment.
  desktops = {
    kde.enable = true; # Enable KDE desktop environment.
  };

  term = {
    core.enable = true; # Enable core terminal features.
    zsh.enable = true; # Enable Zsh shell.
  };

  services = {
    flatpak.enable = true;
    unraidMnt.enable = true;
  };

  virtualization = {
    virtmanager.enable = true;
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.zach = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  environment.systemPackages = with pkgs; [
    nerd-fonts.ubuntu-mono
    vim-full
    ptyxis
  ];

  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.05"; # Did you read the comment?

}
