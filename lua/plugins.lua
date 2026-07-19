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

require('conform').setup({
  formatters_by_ft = {
    asm = { 'asmfmt' },
    lua = { 'stylua' },
    nix = { 'nixfmt' },
    typst = { 'typstyle' },
  },
  format_on_save = function(bufnr)
    local ignore_filetypes = { 'css', 'html', 'nix' }
    if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
      return
    end
    return { timeout_ms = 500, lsp_format = 'fallback' }
  end,
  default_format_opts = {
    lsp_format = 'fallback',
  },
})
