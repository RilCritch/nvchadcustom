local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

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
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvimtree"
    end,
    lazy = false,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "phaazon/hop.nvim",
    branch = 'v2', -- optional but strongly recommended
    config = function()
    -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',
        -- uppercase_labels = true,
      }
    end,
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end,
    lazy = false,
  },

  { -- adding which-key group names
    "folke/which-key.nvim",
    require("which-key").register({
      ["<leader>"] = {
        f = { name = "+find" },
        g = { name = "+git" },
        e = { name = "+file explorer"},
        r = { name = "+code runner"}
      }
    }),
  },

  { -- for running code within nvim
    "CRAG666/code_runner.nvim",
    config = function()
      require('code_runner').setup({
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt"
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt"
          },
        },
      })
    end,
    lazy = false,
  },

  {
    "shortcuts/no-neck-pain.nvim",
    lazy = false,
    config = function()
      require('no-neck-pain').setup({
        autocmds = { enableOnVimEnter = true },
        width = 150,
      })
    end,
  },

}

return plugins
