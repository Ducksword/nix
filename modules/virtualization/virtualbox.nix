{lib, config, ...}:

let
  cfg = config.virtualization.virtualbox;

in
{

  options = {
    virtualization.virtualbox = {
      enable = lib.mkEnableOption "enables VirtualBox virtualization support";
    };
  };

  config = 
    lib.mkIf cfg.enable {
      virtualisation.virtualbox.host.enable = true;
      virtualisation.virtualbox.host.enableExtensionPack = true;
      users.extraGroups.vboxusers.members = [ "zach" ];
    };

}