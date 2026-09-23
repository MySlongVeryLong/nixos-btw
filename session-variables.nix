{
  config,
  pkgs,
  ...
}: {
  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "${config.home.homeDirectory}/.steam/root/compatibilitytools.d";
    EDITOR = "nvim";
    GIT_EDITOR = "nvim";
  };
}
