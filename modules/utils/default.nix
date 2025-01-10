{ ... }:
{
  imports = [
    ./git/git.nix
    ./distrobox.nix
    ./editor.nix
    ./guest-tools.nix
    ./tmux.nix
    ./vscode.nix
    ./zsh.nix
  ];
}
