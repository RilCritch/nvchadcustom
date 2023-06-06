---@type MappingsTable
local M = {}

M.disabled = { -- i can use these for other keybindings in future 
  n = {
    -- with leader ["<leader>keys"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>rh"] = "",
    ["<leader>ph"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<leader>th"] = "",
    ["<leader>td"] = "",
    ["<leader>g"] = "",

    -- no modifier ["keys"] = "",
    ["]c"] = "",
    ["[c"] = "",

    -- with ctrl ["<C-keys>"] = "",
    ["<C-n>"] = "",

    -- with alt ["<A-keys>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<A-i>"] = "",
  },

  v = {

  },

  i = {

  },

  t = {
    -- with alt ["<A-keys>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<A-i>"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.coderunner = {
  n = {
    ["<leader>rr"]  = { "<cmd> RunCode<CR>", "Run code based on file type" },
    ["<leader>rf"]  = { "<cmd> RunFile<CR>", "Run the current file" },
    ["<leader>rp"]  = { "<cmd> RunProject<CR>", "Run the current project" },
    ["<leader>rc"]  = { "<cmd> RunClose<CR>", "Close the code runner" },
  },
}

M.nvterm = {
  n = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    }
  },

  t = {
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

M.gitsigns = {
  n = {
    ["<leader>gd"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  }
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.navigation = {
  n = {
    ["<leader>j"] = { "<cmd> HopWord <CR>", "HopWord" },
  },
    -- search-replace.nvim keybindings
}

M.telescope = {
  n = {
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
    ["<leader>fz"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>fw"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "find in current buffer" },
  },
}
-- more keybinds!

return M
