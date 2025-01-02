{ ... }:
{
  imports = [
    ./steam.nix
    ./lutris.nix
    ./prismlauncher.nix
    ./osu-lazer.nix
  ];

  steam.enable = true;
}
