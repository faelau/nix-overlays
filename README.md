# nix-overlays
Overlays with packages that are unlikely to be added to nixpkgs.

## Usage

Add the following to your `/etc/nixos/configuration.nix`:

```
{ config, pkgs, ... }:

let
  faelau = import <nixpkgs> {
    overlays = [
      (import (builtins.fetchTarball "https://github.com/faelau/nix-overlays/archive/main.tar.gz"))
    ];
  };
in {
  environment.systemPackages = (with pkgs.faelau; [ overlayPackage ]);
}
```
