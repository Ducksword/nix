{ pkgs, ... }:
{
  # Games
  users.users.zach.packages = [ 
    pkgs.osu-lazer
  ];

  # Enable steam
  programs.steam.enable = true;

  # Enable heroic games
  programs.gamemode.enable = true;
  programs.gamescope.enable = true;
  environment.systemPackages = [pkgs.heroic-unwrapped];

}