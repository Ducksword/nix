{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    bolt-launcher.enable = lib.mkEnableOption "enable bolt-launcher";
  };

  config = lib.mkIf config.bolt-launcher.enable {
    environment.systemPackages = [ pkgs.bolt-launcher ];
  };
}
