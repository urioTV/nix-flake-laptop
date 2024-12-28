{
  inputs,
  config,
  pkgs,
  chaotic,
  ...
}:
{
  imports = [
    ./stylix.nix
    ./hardware-stuff
    ./programs
    ./boot-kernel-stuff
    ./pkgs
    ./services
    ./plasma6
    ./filesystems
    ./networking
  ];
}
