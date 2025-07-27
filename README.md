## modules
https://www.youtube.com/watch?v=4nzvv3L9ShY

```
# use this atribute set for basically every module
{ config, lib, pkgs, ... }:
```

```
let
  # services will use systemd
  cfg = config.services.app-name;
  # programs for programs
  cfg = config.programs.app-name;
```

# disko
Use disko-install 
https://github.com/nix-community/disko/blob/master/docs/disko-install.md

disk-name is just a label
```
sudo nix run 'github:nix-community/disko/latest#disko-install' --  --experimental-features 'nix-command flakes' --flake .#desktop --disk main /dev/sda
```

# How to make custom options
```
{ lib, config, ... }:
{
  options.NAME.enable = lib.mkEnableOption "enable NAME";

  config = lib.mkIf config.NAME.enable {

  };
}
```

# How to install nixos
just is the only dependency for installing
```
nix-shell -p just
```

To install make sure the disk variable is set properly in install-btrfs.sh \
then run
```
just install-nixos-hostname
```
This formats the disk and installs the filesystems \
Next the hardware configuration is replaced with an updated one \
Finally nixos is installed

## post boot
Remeber to update your password \
to install home-manager and flatpak
```
just install-user-zach
```