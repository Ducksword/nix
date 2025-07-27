{ lib, ... }:

let
  cfg = config.term.vim;

in
{
  options = {
    term.vim.enable = 
      lib.mkEnableOption "enables vim";
  };

  config = lib.mkIf cfg.enable {
    programs.vim = {
      enable = true;
      defaultEditor = true;
      package = (pkgs.vim_configurable)
    };
  };
}
