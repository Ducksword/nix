{ lib, config, pkgs, ... }:
{
  options.git.enable = lib.mkEnableOption "enable git";

  config = lib.mkIf config.git.enable {

    home-manager.users.zach = {
      programs.git = {
        enable = true;
        userName = "ducksword";
        userEmail = "Diabotek@proton.me";
      };
    };

    environment.systemPackages = with pkgs; [
      lazygit
    ];
  };
}