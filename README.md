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
