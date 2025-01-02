up:
    nix flake update

bu:
    sudo nixos-rebuild dry-activate --flake .#desktop

test:
    sudo nixos-rebuild test --flake .#desktop

desktop:
    sudo nixos-rebuild switch --flake .#desktop

surface:
    nixos-rebuild switch --target-host zach@192.168.0.221 --use-remote-sudo --flake .#surface
