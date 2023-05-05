-- Where I set vim options
--
-- local autocmd = vim.api.nvim_create_autocmd
local opt = vim.o
-- local g = vim.g

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- leap.nvim configuration
-- local leap = require "plugins.leap"
-- leap.add_default_mappings()
opt.relativenumber = true

-- local wk = require "which-key"
