---@type vim.lsp.Config
return {
  cmd = { 'tinymist' },
  filetypes = { 'typst' },
  root_markers = { '.git' },
  on_init = function(client)
    -- disable code lens which break completion
    vim.lsp.codelens.enable(false, { client_id = client.id })
  end,
  settings = {
    tinymist = {
      exportPdf = 'never',
      formatterMode = 'disable', -- handled by conform.nvim
    },
  },
}
