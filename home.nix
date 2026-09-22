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
    neovim
    btop
    shotcut
    tealdeer
    obsidian
    hyfetch
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
    wireshark
    mtr
    proton-vpn
    protonup-ng
  ];

 home.sessionVariables = {
  
   STEAM_EXTRA_COMPAT_TOOLS_PATHS = "${config.home.homeDirectory}/.steam/root/compatibilitytools.d";
 };
}
