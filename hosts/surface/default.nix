{ pkgs, ... }:
{
  imports = [
    ./modules/utils/vscode.nix
    ./modules/utils/git/git.nix
    ./modules/desktops/default.nix
  ];
  # Desktop
  gnome.enable = true;

  # Enable zram
  zramSwap.enable = true;

  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    floorp
  ];
}
