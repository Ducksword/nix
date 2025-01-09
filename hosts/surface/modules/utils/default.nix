{ ... }:
{
  imports = [
    ./git/git.nix
    ./distrobox.nix
    ./editor.nix
    ./flatpak.nix
    ./tmux.nix
    ./vscode.nix
    ./zsh.nix
  ];
}
