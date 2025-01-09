{ ... }:
{
  imports = [
    ../default.nix
  ];

  git.enable = true;
  distrobox.enable = true;
  editor.enable = true;
  flatpak.enable = true;
  tmux.enable = true;
  vscode.enable = true;
  zsh.enable = true;

}
