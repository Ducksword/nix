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
      autosuggestions = {
        enable = true;
        async = true;
      };
      syntaxHighlighting.enable = true;
      enableBashCompletion = true;

      shellAliases = {
        # System management
        shell = "nix shell nixpkgs#";
        calc = "nix shell nixpkgs#python3 --command python";
      };
      ohMyZsh = {
        enable = true;
        theme = "frisk";
      };
    };
  };
}
