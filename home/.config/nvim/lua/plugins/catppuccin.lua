-- Example: ~/.config/nvim/lua/plugins/theme.lua
return {
  -- Catppuccin plugin configuration (as in Step 1)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "frappe",
      -- ... other catppuccin options
    },
  },

  -- LazyVim core configuration to use Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
