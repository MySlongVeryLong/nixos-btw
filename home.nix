{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.areofyl-fetch.homeManagerModules.default
    inputs.spicetify-nix.homeManagerModules.default
    ./sh.nix
    ./aerofetch.nix
    ./spicetify.nix
    ./session-variables.nix
  ];

  home.username = "slong";
  home.homeDirectory = "/home/slong";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [
    nixd
    neovim
    vim
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
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "af-magic";
    };
  };
}
