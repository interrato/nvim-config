vim.treesitter.language.register('latex', { 'tex' })

vim.api.nvim_create_autocmd('FileType', {
  callback = function(ev)
    local filetype = vim.filetype.match({ buf = ev.buf })

    -- some grammars breaks because of https://github.com/neovim/neovim/issues/27521
    -- TODO(interrato): handle this more cleanly?
    if not vim.tbl_contains({ 'haskell', 'javascript', 'just', 'nix' }, filetype) then
      pcall(vim.treesitter.start, ev.buf)
      return
    end

    -- enable regex-based legacy syntax highlighting
    -- for languages with broken treesitter support
    vim.bo[ev.buf].syntax = 'ON'
  end,
})
