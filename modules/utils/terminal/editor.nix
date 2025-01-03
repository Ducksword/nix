{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    editor.enable = lib.mkEnableOption "enable editors";
  };

  config = lib.mkIf config.editor.enable {
    # nano
    programs.nano = {
      enable = true;
      syntaxHighlight = true;
      nanorc = "
      set nowrap
      set tabstospaces
      set tabsize 2
      ";
    };

    # neovim
    

    environment.systemPackages = with pkgs; [
      just # like make
      nixd # nix lsp
      nixfmt-rfc-style # nix format
      git
    ];

  };
}
