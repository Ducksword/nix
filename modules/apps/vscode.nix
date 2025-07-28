{ config, lib, pkgs, ... }:

let
  cfg = config.apps.vscode;

in
{
  options = {
    apps.vscode.enable =
      lib.mkEnableOption "Enable Visual Studio Code";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      vscode-fhs
      
      # default editor packages
      nixd
      bash-language-server
      shellcheck
    ];
  };
}
