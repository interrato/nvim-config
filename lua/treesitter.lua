vim.treesitter.language.register('latex', { 'tex' })

vim.api.nvim_create_autocmd('FileType', {
  callback = function(ev)
    pcall(vim.treesitter.stop, ev.buf)

    -- TODO(interrato): theme
    -- pcall(vim.treesitter.start, ev.buf)
    --
    -- legacy regex syntax highlighting
    -- local filetype = vim.filetype.match({ buf = ev.buf })
    -- if vim.tbl_contains({ 'tex', 'php', 'typescript' }, filetype) then
    --   vim.bo[ev.buf].syntax = 'ON'
    -- end
  end,
})
