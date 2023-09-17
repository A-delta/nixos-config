{
  config,
  pkgs,
  ...
}: {
  programs.kitty = {
    enable = true;
    #theme = "Solarized Light";
    settings = {
      foreground = "#${config.colorScheme.colors.base05}";
      background = "#${config.colorScheme.colors.base00}";

      selection_background = "#${config.colorScheme.colors.base02}";
      scrollback_lines = 10000;
    };
    font = {
      package = pkgs.fira-code;
      name = "firacode";
      size = 12;
    };
  };
}
