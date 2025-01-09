{ ... }:
{
  imports = [
    ./gnome/default.nix
  ];

  home-manager.users.zach = {
    home.username = "zach";
    home.homeDirectory = "/home/zach";
    programs.home-manager.enable = true;
    home.stateVersion = "24.11";
  };
}