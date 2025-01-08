{ ... }:
{
  home-manager.users.zach = {
    programs.git = {
      enable = true;
      userName = "ducksword";
      userEmail = "Diabotek@proton.me";
    };
  };
}