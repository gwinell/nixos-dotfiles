{ ... }: {
  programs.firefox = {
    enable = true;
    profiles.arlo = {
      settings = {
        "layout.css.devPixelsPerPx" = "1.2"; 
      };
    };
  };
}
