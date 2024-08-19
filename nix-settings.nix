{ pkgs, config, lib, ... }:

{
  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nix.settings = {
    substituters = [
      "https://hyprland.cachix.org"
      "https://nix-gaming.cachix.org"
      "https://nix-citizen.cachix.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
      "nix-citizen.cachix.org-1:lPMkWc2X8XD4/7YPEEwXKKBg+SVbYTVrAaLA2wQTKCo="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };


  nix.settings.auto-optimise-store = true;

  # nix.gc = {
  #   automatic = true;
  #   dates = "daily";
  #   options = "--delete-older-than 2d";
  # };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 2d --keep 2";
    flake = "/home/urio/nix-flake-config";
  };


  nix.settings.trusted-users = [ "root" "urio" ];
}
