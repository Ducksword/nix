{ pkgs, lib, config, ... }:

{
  options = {
    prismlauncher.enable =
      lib.mkEnableOption "enable prismlauncher";
  };

  config = lib.mkIf config.prismlauncher.enable {
    environment.systemPackages = [ pkgs.prismlauncher ];
  };
}