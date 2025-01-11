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

vm-test:
    nixos-rebuild boot --target-host root@192.168.122.87 --flake .#testing

nixos-anywhere-hw:
    nix run github:nix-community/nixos-anywhere -- --generate-hardware-config \
    nixos-generate-config ./hosts/testing/hardware-configuration.nix --flake \
    .#testing --target-host root@192.168.122.87