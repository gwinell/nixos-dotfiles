{ ... }:
{
  programs.firefox = {
    enable = true;
    profiles.arlo = {
      settings = {
        "layout.css.devPixelsPerPx" = "-1.0";
        "widget.use-xdg-desktop-portal.file-picker" = 1;
      };
    };
  };
}
