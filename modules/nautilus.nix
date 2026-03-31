{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nautilus
    # Добавляем просмотрщик картинок и архиватор, чтобы Nautilus был функциональным
    loupe # Просмотрщик (GNOME)
    baobab # Анализатор диска
    gnome-disk-utility
  ];

  # Устанавливаем Nautilus как программу по умолчанию для папок
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
    };
  };
}
