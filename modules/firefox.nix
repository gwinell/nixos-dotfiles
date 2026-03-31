{ ... }:
{
  programs.firefox = {
    enable = true;
    profiles.arlo = {
      settings = {
        "layout.css.devPixelsPerPx" = "1.2";
        # Форсируем использование системного портала для выбора файлов
        "widget.use-xdg-desktop-portal.file-picker" = 1;
      };
    };
  };
}
