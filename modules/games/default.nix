{ ... }:
{
  imports = [
    ./lutris.nix
    ./prismlauncher.nix
    ./steam.nix
  ];
  steam.enable = true;

  lutris.enable = false;
  prismlauncher.enable = true;
}