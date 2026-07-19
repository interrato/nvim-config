vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspAttach', { clear = true }),
  callback = function(ev)
    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

    if client:supports_method('textDocument/documentHighlight') then
      vim.b[ev.buf].minicursorword_disable = true

      vim.api.nvim_set_hl(0, 'LspReferenceText', { link = 'MiniCursorword' })
      vim.api.nvim_set_hl(0, 'LspReferenceRead', { link = 'MiniCursorword' })
      vim.api.nvim_set_hl(0, 'LspReferenceWrite', { link = 'MiniCursorword' })

      local group = vim.api.nvim_create_augroup('UserLspHighlight', { clear = false })
      vim.api.nvim_clear_autocmds({ buffer = ev.buf, group = group })
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = ev.buf,
        group = group,
        callback = vim.lsp.buf.document_highlight,
      })
      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = ev.buf,
        group = group,
        callback = vim.lsp.buf.clear_references,
      })
    end

    if client:supports_method('textDocument/linkedEditingRange') then
      vim.lsp.linked_editing_range.enable(true, { client_id = ev.data.client_id })
    end
  end,
})

vim.lsp.codelens.enable()
vim.lsp.inlay_hint.enable()

vim.lsp.enable({
  'asm_lsp',
  'bashls',
  'clangd',
  'gopls',
  'lua_ls',
  'nil_ls',
  'ruff',
  'superhtml',
  'tinymist',
  'ty',
})
