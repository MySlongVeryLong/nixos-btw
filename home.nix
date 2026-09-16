{ config, pkgs, inputs, ... }:


{

  imports = [ 
     inputs.areofyl-fetch.homeManagerModules.default
     inputs.spicetify-nix.homeManagerModules.default
     ./sh.nix
     ./aerofetch.nix
  ];

  home.username = "slong";
  home.homeDirectory = "/home/slong";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    vim
    btop
    shotcut
    tealdeer
    obsidian
    fastfetch
    obs-studio
    bat
    eza
    imagemagick
    jq
    binutils
    cifs-utils
  ];

  programs.spicetify =
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  enable = true;

  enabledExtensions = with spicePkgs.extensions; [
    adblock
    hidePodcasts
    shuffle # shuffle+ (special characters are sanitized out of extension names)
  ];
  enabledCustomApps = with spicePkgs.apps; [
    newReleases
    ncsVisualizer
  ];
  enabledSnippets = with spicePkgs.snippets; [
    rotatingCoverart
    pointer
  ];

  theme = spicePkgs.themes.starryNight;
};
 
}
