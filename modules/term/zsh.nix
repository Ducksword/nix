{ lib, config, ... }:

let
  cfg = config.term.zsh;

in
{
  options = {
    term.zsh.enable =
      lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf cfg.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      enableBashCompletion = true;

      autosuggestions = {
        enable = true;
        async = true;
      };
      syntaxHighlighting.enable = true;

      ohMyZsh = {
        enable = true;
        theme = "frisk";
      };

      shellAliases = {
        btop = "nix shell nixpkgs#btop --command btop";
        lg = "lazygit";

        ls = "ls -h --color";
      };
    };
  };
}
