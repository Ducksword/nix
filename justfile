update:
	nix flake update

desktop-switch:
	sudo nixos-rebuild switch --flake .#desktop

desktop-boot:
	sudo nixos-rebuild boot --flake .#desktop
	just hm-zach

gc:
	sudo nix-collect-garbage -d
	nix-collect-garbage -d

install-nixos-desktop:
	nixos-generate-config --show-hardware-config --root /mnt > ./hosts/desktop/hardware-configuration.nix
	nixos-install --no-root-password --no-channel-copy --flake .#desktop