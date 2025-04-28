{ pkgs, ... }:

{
  services.ollama = {
    enable = true;
    acceleration = "rocm";
  };
  services.open-webui.enable = true;

  environment.systemPackages = [
    pkgs.goose-cli
  ];
}