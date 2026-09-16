{ config, pkgs, inputs, ... }:


{

  imports = [ 
     inputs.areofyl-fetch.homeManagerModules.default
     inputs.spicetify-nix.homeManagerModules.default
     ./sh.nix
     ./aerofetch.nix
     ./spicetify.nix
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
    yt-dlp
    file
    ffmpeg
    mpv
    eog
    fzf
  ];
 
}
