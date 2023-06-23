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

opt.relativenumber = true
opt.scrolloff = 999 -- center cursor
opt.title = true
opt.titlestring = "%f"
-- vim.opt.statusline = ""
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
