{ pkgs, ...}:

{
  programs.fetch = {
    enable = true;
    labelColor = "red";
    info = [
      "os"
      "kernel"
      "uptime"
      "host"
      "font"
      "terminal"
      "battery"
      "locale"
      "wm"
      "shell"
      "packages"
      "display"
      "memory"
      "disk"
      "cpu"
    ];
    speed = 1.5;
    spin = "xy";
  };
}
