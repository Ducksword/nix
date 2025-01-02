{ ... }:
{
  imports = [
    ./steam.nix
    ./lutris.nix
    ./prismlauncher.nix
  ];

  steam.enable = true;
}