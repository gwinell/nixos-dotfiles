{ config, pkgs, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    extraConfig = {
      modi = "drun";
      show-icons = true;
      display-drun = "";
      font = "JetBrainsMono Nerd Font 16";
    };
    theme = let inherit (config.lib.formats.rasi) mkLiteral; in {
      "*" = {
        bg0 = mkLiteral "#11111bE6";
        bg1 = mkLiteral "#1e1e2e";
        fg0 = mkLiteral "#ffffff";
        accent = mkLiteral "#89b4fa";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@fg0";
      };
      "window" = { width = mkLiteral "640px"; border-radius = 16; background-color = mkLiteral "@bg0"; border = mkLiteral "2px"; border-color = mkLiteral "@accent"; location = mkLiteral "center"; anchor = mkLiteral "center"; y-offset = mkLiteral "-10%"; };
      "mainbox" = { padding = mkLiteral "20px"; children = mkLiteral "[ \"inputbar\", \"listview\" ]"; };
      "inputbar" = { margin = mkLiteral "0px 0px 15px 0px"; children = mkLiteral "[ \"prompt\", \"entry\" ]"; };
      "entry" = { placeholder = "Search applications..."; placeholder-color = mkLiteral "#6c7086"; text-color = mkLiteral "@fg0"; };
      "prompt" = { margin = mkLiteral "0px 15px 0px 0px"; text-color = mkLiteral "@fg0"; };
      "listview" = { lines = 6; fixed-height = false; scrollbar = false; spacing = mkLiteral "5px"; };
      "element" = { padding = mkLiteral "12px"; border-radius = 10; };
      "element selected" = { background-color = mkLiteral "@accent"; text-color = mkLiteral "#11111b"; };
      "element-icon" = { size = mkLiteral "36px"; margin = mkLiteral "0px 15px 0px 0px"; };
      "element-text" = { vertical-align = mkLiteral "0.5"; text-color = mkLiteral "inherit"; };
    };
  };
}
