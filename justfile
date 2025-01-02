sw:
    sudo nixos-rebuild switch --flake .#desktop

up:
    nix flake update

bu:
    sudo nixos-rebuild dry-activate --flake .#desktop

test:
    sudo nixos-rebuild test --flake .#desktop
