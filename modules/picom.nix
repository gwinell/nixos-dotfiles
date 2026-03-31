{ ... }: {
  services.picom = {
    enable = true;
    backend = "xrender";
    fade = true;
    fadeDelta = 5;
    shadow = true;
    inactiveOpacity = 0.8;
    activeOpacity = 1.0;
    settings = {
      corner-radius = 12;
      round-borders = 1;
      rounded-corners-exclude = [
        "window_type = 'dock'"
        "window_type = 'desktop'"
        "y = 0"
        "_NET_WM_WINDOW_TYPE@:a *= '_NET_WM_WINDOW_TYPE_DOCK'"
      ];
      use-damage = false;
    };
  };
}
