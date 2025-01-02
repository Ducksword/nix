{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    parsec.enable = lib.mkEnableOption "enable parsec";
  };

  config = lib.mkIf config.parsec.enable {
    environment.systemPackages = with pkgs; [
      parsec-bin
    ];
  };
}
