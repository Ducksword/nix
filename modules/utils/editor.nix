{
  pkgs,
  lib,
  config,
  ...
}:

{
  options.editor.enable = lib.mkEnableOption "enable editors";

  config = lib.mkIf config.editor.enable {
    programs.nano = {
      enable = true;
      syntaxHighlight = true;
      nanorc = "
      set nowrap
      set tabstospaces
      set tabsize 2
      ";
    };

  environment.variables.EDITOR = "vim";

  environment.systemPackages = with pkgs; [
    just 
    vim
    nerd-fonts.ubuntu-mono
  ];

  };
}
