{ ... }:
{
  imports = [
    ./steam.nix
    ./lutris.nix
    ./prismlauncher.nix
    ./osu-lazer.nix
    ./bolt-launcher.nix
  ];

  steam.enable = true;
}
