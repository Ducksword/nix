{

  inputs = {

    # nixpkgs
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # nixos-hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

  };

  outputs = inputs@{ self, nixpkgs, nixos-hardware,... }: {

    # desktop
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      modules = [
        ./hosts/desktop/configuration.nix
        ./modules
      ];
    };

    # surface 
    nixosConfigurations.surface = nixpkgs.lib.nixosSystem {
      modules = [
        ./hosts/surface/configuration.nix
        # for surface kernel
        nixos-hardware.nixosModules.microsoft-surface-common
      ];
    };
  };

}
