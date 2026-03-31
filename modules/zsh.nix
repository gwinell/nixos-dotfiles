{ config, pkgs, lib, ... }:
let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
in {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # Исправляем имя опции для твоей версии [cite: 26]
    autosuggestion.enable = true; 
    syntaxHighlighting.enable = true;
    shellAliases = {
      "vim" = "nvim";
      "btw" = "echo I use nixos btw";
    };
    plugins = [{
      name = "powerlevel10k";
      src = pkgs.zsh-powerlevel10k;
      file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    }];
    initContent = lib.mkMerge [
      (lib.mkBefore ''
        if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
          source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
        fi
      '')
      ''
        function TRAPWINCH() { zle && zle reset-prompt; }
        source ${dotfiles}/zsh/.zshrc
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      ''
    ];
  };
}
