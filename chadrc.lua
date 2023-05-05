---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  -- theme = "ayu_dark",
  -- theme = "dark_horizon",
  -- theme = "jellybeans",
  -- theme = "mountain",
  -- theme = "pastelbeans",
  -- theme = "radium",
  -- theme = "gatekeeper",
  -- theme = "gruvchad",
  -- theme = "tomorrow_night",
  -- theme = "vscode_dark",
  -- theme = "wombat",
  theme = "yoru",
  -- theme = "ashes", theme_toggle = { "ayu_dark", "one_light" },

  nvdash = { load_on_startup = true },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    -- theme options: default/vscode/vscode_colored/minimal
    theme = "default",

    -- seperator style options:
    -- default/round/block/arrow
    -- seperators only work with "default" theme; round/block work with "minimal"
    seperator_style = "round",
    -- overriden_modules = nil,
  },

  telescope = {
    style = "bordered",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
