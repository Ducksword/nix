{ pkgs, ... }:
{
  imports = [
    ./modules/core/default.nix
  ];
  # Enable zram
  zramSwap.enable = true;

  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    floorp
  ];
}
