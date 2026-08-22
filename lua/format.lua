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
