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
    ];
    speed = 1.0;
    spin = "xy";
  };
}
