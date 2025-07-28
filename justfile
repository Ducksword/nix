update:
	nix flake update

switch:
	sudo nixos-rebuild switch --flake .

boot:
	sudo nixos-rebuild boot --flake .

gc:
	sudo nix-collect-garbage -d
	nix-collect-garbage -d

install-nixos-desktop:
	nixos-generate-config --show-hardware-config --root /mnt > ./hosts/desktop/hardware-configuration.nix
	nixos-install --no-root-password --no-channel-copy --flake .#desktop