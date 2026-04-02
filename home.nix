{
  config,
  pkgs,
  lib,
  ...
}:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  imports = [
    ./modules/zsh.nix
    ./modules/alacritty.nix
    ./modules/picom.nix
    ./modules/rofi.nix
    ./modules/firefox.nix
    ./modules/nautilus.nix
  ];

  home.username = "arlo";
  home.homeDirectory = "/home/arlo";
  home.stateVersion = "25.11";

  home.sessionVariables = {
    TERMINAL = "alacritty";
  };

  xresources.properties = {
    "Xft.dpi" = 115;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      text-scaling-factor = 1.2;
      font-name = "Sans 11";
      document-font-name = "Sans 11";
      monospace-font-name = "Monospace 11";
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos btw";
    };
  };

  programs.git = {
    enable = true;
    userName = "gwinell";
    userEmail = "wgwinell@yahoo.com";
  };

  xdg.configFile."qtile" = {
    source = create_symlink "${dotfiles}/qtile/";
    recursive = true;
  };
  xdg.configFile."nvim" = {
    source = create_symlink "${dotfiles}/nvim";
    recursive = true;
  };
  home.file.".p10k.zsh".source = create_symlink "${dotfiles}/zsh/.p10k.zsh";

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };

  home.packages = with pkgs; [
    neovim
    ripgrep
    nil
    nixfmt-rfc-style
    nodejs
    gcc
    neofetch
    # LazyVim
    fd
    xclip
    tree-sitter
    unzip
    gnumake
    # PYTHON
    python3
    pyright
    ruff
    black
    # RUST
    cargo
    rustc
    rust-analyzer
    rustfmt
    # Графический unzip
    file-roller
    # Консольные аналоги
    unzip
    unrar
    p7zip
  ];
}
