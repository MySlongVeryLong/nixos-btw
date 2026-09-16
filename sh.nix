{ config, pkgs, ...}:

let
  myAliases = {
    ".." = "cd ..";
    ll = "ls -l";
    ls = "eza";
    nrs = "sudo nixos-rebuild switch --flake .";
  };
in
{
 programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };
}
