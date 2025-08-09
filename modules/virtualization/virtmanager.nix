{lib, config, ...}:

let
  cfg = config.virtualization.virtmanager;

in
{

  options = {
    virtualization.virtmanager = {
      enable = lib.mkEnableOption "";
    };
  };

  config = 
    lib.mkIf cfg.enable {
      virtualisation.libvirtd = {
        enable = true;
        qemu.ovmf.enable = true;
        qemu.swtpm.enable = true;
      };

      programs.virt-manager.enable = true;
    };

}