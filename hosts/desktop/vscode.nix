{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    vscode-fhs
    
    # default editor packages
    nixd
    just
    bash-language-server
    shellcheck
  ];
}
