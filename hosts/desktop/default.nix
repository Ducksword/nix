{ ... }:
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
  osu-lazer.enable = true;
  bolt-launcher.enable = true;
}
