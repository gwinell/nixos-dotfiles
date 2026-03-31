return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Если у тебя установлен nixpkgs-fmt:
        -- nix = { "nixpkgs_fmt" },

        -- (А если ты установил nixfmt-rfc-style, то раскомментируй строку ниже и удали верхнюю)
        nix = { "nixfmt" },
      },
    },
  },
}
