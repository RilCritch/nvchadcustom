---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- naming
    -- ["<leader>f"] = { name = "find..." },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>j"] = { "<cmd> HopWord <CR>", "HopWord" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
    -- search-replace.nvim keybindings

  },
}

-- more keybinds!

return M
