{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.lutris.enable = lib.mkEnableOption "enable lutris";

  config = lib.mkIf config.lutris.enable {
    environment.systemPackages = [ 
      pkgs.lutris
    ];
  };
}
