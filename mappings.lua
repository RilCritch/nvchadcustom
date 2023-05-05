---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>j"] = { "<cmd> HopWord <CR>", "HopWord" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
  },
}

-- more keybinds!

return M
