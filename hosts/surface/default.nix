{  pkgs, ... }:
{
  imports = [
    ../../modules/default.nix
  ];

  environment.systemPackages = with pkgs; [

    (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          jnoortheen.nix-ide
          nefrob.vscode-just-syntax
          christian-kohler.path-intellisense
          mhutchie.git-graph
          ms-vscode-remote.remote-ssh
          ms-vscode-remote.remote-ssh-edit
        ];
    })
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  # Trusts user for remote rebuild
  nix.settings.trusted-users = [ "@wheel" ];

}
