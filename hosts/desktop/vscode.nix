{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    vscode-fhs
    
    # default editor packages
    nixd
    bash-language-server
    shellcheck
  ];
}
