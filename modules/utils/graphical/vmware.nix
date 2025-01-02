{ lib, config, ... }:

{
  options = {
    vmware.enable = lib.mkEnableOption "enable vmware";
  };

  config = lib.mkIf config.vmware.enable {
    virtualisation.vmware.host.enable = true;
  };
}
