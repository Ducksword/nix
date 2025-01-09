{ ... }:
{
  imports = [
    ./lutris
    ./prismlauncher.nix
    ./steam.nix
  ];
  steam.enable = true;
}