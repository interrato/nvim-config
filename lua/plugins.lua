vim.pack.add({
  'https://github.com/interrato/burro',
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/stevearc/conform.nvim',
})

vim.cmd.colorscheme('burro')

require('mini.completion').setup({
  window = {
    info = { border = '' },
    signature = { border = '' },
  },
})
require('mini.move').setup()

require('mini.extra').setup() -- more pickers
require('mini.files').setup()
require('mini.pick').setup()

require('mini.cursorword').setup()
require('mini.notify').setup()
