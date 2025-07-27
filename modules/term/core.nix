{ config, pkgs, lib, ... }:

let
  cfg = config.term.core;

in
{
  options = {
    term.core.enable =
      lib.mkEnableOption "enables core terminal features";
  };

  config = lib.mkIf cfg.enable {

    # default packages
    environment.systemPackages = with pkgs; [
      nixd
      just
    ];

    # git
    programs.git = {
      enable = true;
      prompt.enable = true;
      config = [
        {
          user.name = "Ducksword";
          user.email = "Diabotek@proton.me";
          init.defaultBranch = "main";
        }
      ];
    };

  };
}
