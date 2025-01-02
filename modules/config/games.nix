{ pkgs, ... }:
{
  # Games
  users.users.zach.packages = [ 
    pkgs.osu-lazer
    pkgs.prismlauncher
  ];

  # Enable heroic games
  # programs.gamemode.enable = true;
  # programs.gamescope.enable = true;
  # environment.systemPackages = [pkgs.heroic];

  # Enable Lutris
  

}