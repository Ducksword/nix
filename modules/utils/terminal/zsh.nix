{ lib, config, ... }:

{
  options = {
    zsh.enable = lib.mkEnableOption "enable zsh";
  };

  config = lib.mkIf config.zsh.enable {
    # Enable zsh
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        # System management
        sw = "sudo nixos-rebuild switch --flake '/home/zach/nix#desktop'";
        calc = "nix shell nixpkgs#python3 --command python";
      };
      ohMyZsh = {
        enable = true;
        theme = "frisk";
      };
    };
  };
}
