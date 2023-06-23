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
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

-- command to run when no file or directory is specified
local function open_nvim_tree(data)

  -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  -- local buftype = vim.api.nvim_buf_get_option(0, 'buftype')
  -- local directory = vim.fn.isdirectory(data.file) == 1

  -- if real_file or buftype == 'dir' and not no_name then
  --   return
  -- end
  if real_file or not no_name then
    return
  end

  -- nvim-tree
  -- require("nvim-tree.api").tree.toggle({
  --   focus = false,
  --   find_file = true,
  -- })

  -- telescope
  require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={
    preview_cutoff=999,
    prompt_position='top',
    height = 0.99,
    width = 0.99,
  }})
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
