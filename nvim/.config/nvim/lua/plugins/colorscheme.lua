return {
  -- Add the catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensures it loads before other plugins
    opts = {
      flavour = "mocha", -- Or "latte", "frappe", "macchiato"
      transparent_background = true, -- Main transparency setting
      -- Optional: ensure floating windows (like hover docs) are also transparent
      float = {
        transparent = true,
        solid = true,
      },
      -- Optional: customize integrations for transparency
      integrations = {
        -- For the file explorer (nvim-tree or similar), ensure it respects transparency
        cmp = true,
        gitsigns = true,
        treesitter = true,
        -- Add other integrations as needed (e.g., "telescope", "mason")
      },
    },
    -- This config function applies the settings when the plugin loads
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- You can also set the colorscheme here
      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

  -- Configure LazyVim to use catppuccin as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha", -- Must match the flavour you want to use
    },
  },
}
