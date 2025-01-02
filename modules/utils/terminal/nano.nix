{ lib, config, ... }:

{
  options = {
    nano.enable =
      lib.mkEnableOption "enable nano";
  };

  config = lib.mkIf config.nano.enable {
    # nano
    programs.nano = {
      enable = true;
      syntaxHighlight = true;
      nanorc = 
      "
      set nowrap
      set tabstospaces
      set tabsize 2
      ";
    };
  };
}