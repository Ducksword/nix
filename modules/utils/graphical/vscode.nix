{ pkgs, lib, config, ... }:

{
  options = {
    vscode.enable = lib.mkEnableOption "enable vscode";
  };

  config = lib.mkIf config.vscode.enable {
    environment.systemPackages = with pkgs; [

      # Extensions
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          christian-kohler.path-intellisense
          mhutchie.git-graph          
          
          jnoortheen.nix-ide
          nefrob.vscode-just-syntax

          ms-vscode-remote.remote-ssh
          ms-vscode-remote.remote-ssh-edit
          ];
      })
    ];
  };
}
