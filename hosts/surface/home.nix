{ ... }:
{
  imports = [
    ./modules/utils/vscode.nix
    ./modules/utils/git.nix
  ];

  #modules = [
  #  inputs.home-manager.nixosModules.home-manager
  #  {
  #    home-manager.useGlobalPkgs = true;
  #    home-manager.useUserPackages = true;
  #  }
  #];

  home-manager.users.zach = {
    home.username = "zach";
    home.homeDirectory = "/home/zach";
    programs.home-manager.enable = true;
    home.stateVersion = "24.11";
  };
}