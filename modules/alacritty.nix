{ ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = { family = "JetBrainsMono Nerd Font"; style = "Regular"; };
        size = 14.0;
        offset = { x = 0; y = -1; };
      };
      window = {
        padding = { x = 10; y = 10; };
        dynamic_title = true;
      };
      scrolling = {
        history = 10000;
        multiplier = 3;
      };
    };
  };
}
