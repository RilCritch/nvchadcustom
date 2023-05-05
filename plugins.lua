local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- cursor animation
  { -- basic cursor movement animation
    "echasnovski/mini.animate",
    event = "VeryLazy",
    enabled = true,
    opts = function()
    -- don't use animate when scrolling with the mouse
      local mouse_scrolled = false
      for _, scroll in ipairs { "Up", "Down" } do
        local key = "<ScrollWheel" .. scroll .. ">"
        vim.keymap.set({ "", "i" }, key, function()
          mouse_scrolled = true
          return key
        end, { expr = true })
    end

    local animate = require "mini.animate"
    return {
      resize = {
        timing = animate.gen_timing.linear { duration = 100, unit = "total" },
      },
      scroll = {
        timing = animate.gen_timing.linear { duration = 150, unit = "total" },
        subscroll = animate.gen_subscroll.equal {
          predicate = function(total_scroll)
            if mouse_scrolled then
              mouse_scrolled = false
              return false
            end
            return total_scroll > 1
          end,
        },
      },
      cursor = {
        timing = animate.gen_timing.linear { duration = 80, unit = "total" },
        },
      }
    end,
    config = function(_, opts) require("mini.animate").setup(opts) end,
    lazy = false,
  },

  -- { -- Cool but a bit to much
  --   "edluffy/specs.nvim",
  --   -- enabled = true,
  --   config = function()
  --     require("specs").setup {
  --       show_jumps  = true,
  --       min_jump = 5,
  --       popup = {
  --         delay_ms = 0, -- delay before popup displays
  --         inc_ms = 10, -- time increments used for fade/resize effects 
  --         blend = 100, -- starting blend, between 0-100 (fully transparent), see :h winblend
  --         width = 50,
  --         winhl = "PMenu",
  --         fader = require('specs').linear_fader,
  --         resizer = require('specs').shrink_resizer
  --       },
  --       ignore_filetypes = {},
  --       ignore_buftypes = {
  --         nofile = true,
  --       },
  --     }
  --   end,
  --   lazy = false,
  -- },

  {
    "phaazon/hop.nvim",
    branch = 'v2', -- optional but strongly recommended
    config = function()
    -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',
        uppercase_labels = true,
      }
    end,
    lazy = false,
  },

}

return plugins
