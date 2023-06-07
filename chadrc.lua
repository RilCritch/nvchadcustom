---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  -- theme = "aquarium",
  -- theme = "ashes",
  -- theme = "ayu_dark",
  -- theme = "bearded-arc",
  -- theme = "catppuccin",
  -- theme = "chadracula",
  -- theme = "chadtain",
  -- theme = "chocolate",
  -- theme = "dark_horizon",
  -- theme = "decay",
  -- theme = "doomchad",
  -- theme = "everblush",
  -- theme = "everforest",
  -- theme = "falcon",
  -- theme = "gatekeeper",
  -- theme = "github_dark",
  -- theme = "gruvbox",
  -- theme = "gruvchad",
  -- theme = "jellybeans",
  -- theme = "kanagawa",
  -- theme = "melange",
  -- theme = "monekai",
  -- theme = "monochrome",
  -- theme = "mountain",
  -- theme = "nightfox",
  -- theme = "nightlamp",
  -- theme = "nightowl",
  -- theme = "nord",
  -- theme = "oceanic-next",
  -- theme = "onedark",
  -- theme = "onenord",
  -- theme = "oxocarbon",
  -- theme = "palenight",
  -- theme = "pastelDark",
  -- theme = "pastelbeans",
  -- theme = "penumbra_dark",
  -- theme = "radium",
  -- theme = "rosepine",
  -- theme = "rxyhn",
  -- theme = "solarized_dark",
  -- theme = "sweetpastel",
  -- theme = "tokyodark",
  -- theme = "tokyonight",
  -- theme = "tomorrow_night",
  -- theme = "tundra",
  -- theme = "vscode_dark",
  -- theme = "wombat",
  theme = "yoru",
  transparency = true,

  nvdash = { load_on_startup = true },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    -- theme options: default/vscode/vscode_colored/minimal
    theme = "vscode_colored",

    -- seperator style options:
    -- default/round/block/arrow
    -- seperators only work with "default" theme; round/block work with "minimal"
    -- seperator_style = "round",
    -- overriden_modules = nil,
  },

  tabufline = {
    show_numbers = true,
  },

  telescope = {
    style = "bordered",
  },

  changed_themes = {
    yoru = {
      base_16 = {
        base02 = "#27292a",
        base03 = "#343637",
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
