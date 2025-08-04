return {
  -- 🌌 Tokyonight (default)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight") -- 👈 Change default here
    end,
  },

  -- 🥛 Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
  },

  -- 🍂 Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 🌹 Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
  },

  -- ❄️ Nord
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 🧛 Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 🌃 Nightfox (with variants like duskfox, carbonfox, etc.)
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 🌲 Everforest
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
  },

  -- ☕ One Dark Pro
  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 💀 Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
  },

  -- 🎆 Monokai Pro (synthwave-style via `spectrum`)
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        filter = "spectrum", -- other filters: "classic", "octagon", "pro", "ristretto"
      })
    end,
  },

  -- 🌫 Transparent.nvim (optional)
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
          "TelescopeNormal",
          "NeoTreeNormal",
          "FloatBorder",
          "StatusLine",
        },
        exclude_groups = {},
      })
    end,
  },

  -- 🖤 Edge
  {
    "sainnhe/edge",
    lazy = true,
    priority = 1000,
  },
}
