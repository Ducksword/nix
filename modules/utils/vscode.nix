{ config, lib, pkgs, ... }:
{
  options.vscode.enable = lib.mkEnableOption "enable vscode";

  config = lib.mkIf config.vscode.enable {

    home-manager.users.zach = {
      programs.vscode = {
        enable = true;
        profiles.default.extensions = with pkgs.vscode-extensions; [
          christian-kohler.path-intellisense
          mhutchie.git-graph          

          jnoortheen.nix-ide
          nefrob.vscode-just-syntax
          ms-vscode-remote.remote-ssh
          ms-vscode-remote.remote-ssh-edit

          vscode-icons-team.vscode-icons
        ];
      };
    };
    environment.systemPackages = with pkgs; [
      nixd
      nixfmt-rfc-style # nix format
    ];
  };
}