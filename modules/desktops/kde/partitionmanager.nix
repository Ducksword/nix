{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.partitionmanager.enable = lib.mkEnableOption "enable partitionmanager";

  config = lib.mkIf config.partitionmanager.enable {
    environment.systemPackages = with pkgs; [
      kdePackages.partitionmanager
    ];
  };
}
