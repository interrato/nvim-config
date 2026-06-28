if vim.fn.has('nvim-0.12') == 0 then
  vim.notify('This configuration only supports Neovim 0.12+', vim.log.levels.ERROR)
  return
end

vim.loader.enable()

require('filetypes')
require('options')
require('plugins')
require('keymaps')
require('treesitter')
require('lsp')

-- TODO(interrato): theme
vim.cmd('syntax off')
