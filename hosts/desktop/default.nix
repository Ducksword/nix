{ pkgs, ... }:
{
  imports = [
    ../../modules/default.nix

    # # default profile
    # ../../modules/default.nix
# 
    # # utils
    # ../../modules/utils/terminal/default.nix
    # ../../modules/utils/graphical/default.nix
# 
    # # kde desktop
    # ../../modules/desktops/kde/default.nix
# 
    # # games
    # ../../modules/games/default.nix
  ];

  # desktop
  kde.enable = true;

  # utils/terminal
  distrobox.enable = true;
  zsh.enable = true;
  editor.enable = true;
  tmux.enable = true;

  # utils/graphical
  vmware.enable = true;
  parsec.enable = true;
  vscode.enable = true;

  # games
  lutris.enable = true;
  prismlauncher.enable = true;
  osu-lazer.enable = false;
  bolt-launcher.enable = false;

  programs.obs-studio = {
    enable = true;
    plugins = [ pkgs.obs-studio-plugins.obs-vaapi ];
  };

  # Change kernel version
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Enable zram
  zramSwap.enable = true;

  # Virtmanager
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}
