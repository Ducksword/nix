# nix

# nixos-anywhere
```
nix run github:nix-community/nixos-anywhere -- --generate-hardware-config \
nixos-generate-config ./hosts/***/hardware-configuration.nix --flake \
.#*** --target-host root@***
```