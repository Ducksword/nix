{ pkgs, ... }:
{
  home-manager.users.zach = {
    programs.vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
        christian-kohler.path-intellisense
        mhutchie.git-graph          
        
        jnoortheen.nix-ide
        nefrob.vscode-just-syntax
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
      ];
    };
  };
  environment.systemPackages = with pkgs; [
    nixd
  ];
}