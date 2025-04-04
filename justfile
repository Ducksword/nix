nixos-anywhere-hw:
    nix run github:nix-community/nixos-anywhere -- --generate-hardware-config \
    nixos-generate-config ./hosts/testing/hardware-configuration.nix --flake \
    .#testing --target-host root@192.168.122.87


update:
    nix flake update


desktop-test:
    sudo nixos-rebuild test --flake .#desktop

desktop-switch:
    sudo nixos-rebuild switch --flake .#desktop

desktop-boot:
    sudo nixos-rebuild boot --flake .#desktop




surface-boot:
    nixos-rebuild boot --target-host zach@192.168.0.221 --use-remote-sudo --flake .#surface




t420-deploy:
    nix run github:nix-community/nixos-anywhere -- --generate-hardware-config \
    nixos-generate-config ./hosts/t420/hardware-configuration.nix --flake \
    .#t420 --target-host root@192.168.0.134

t420-update:
    nixos-rebuild boot --target-host zach@192.168.0.133 --use-remote-sudo --flake .#t420



testing-switch:
    nixos-rebuild boot --target-host zach@192.168.122.88 --use-remote-sudo --flake .#testing





desktop-backup:
    rsync -az /home/zach /mnt/backup --info=progress2 --exclude-from="./backupExcludes"