{ ... }:
{
  imports = [
    ./lutris.nix
    ./prismlauncher.nix
    ./steam.nix
  ];
  steam.enable = true;

  lutris.enable = true;
  prismlauncher.enable = true;
}