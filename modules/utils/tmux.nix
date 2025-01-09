{
  lib,
  config,
  ...
}:

{
  options.tmux.enable = lib.mkEnableOption "tmux";

  config = lib.mkIf config.tmux.enable {
    programs.tmux = {
      enable = true;
    };
  };
}