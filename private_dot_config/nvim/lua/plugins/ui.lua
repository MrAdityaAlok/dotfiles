return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        -- floats = "transparent",
      },
      -- on_colors = function(colors)
      --   colors.comment = colors.fg_dark
      -- end,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = true,
      -- transparent = true,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = false,
      window = {
        position = "left",
        width = 30,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hyprlang",
        "go",
        "qmljs",
      },
    },
  },
}
