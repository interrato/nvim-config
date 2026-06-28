---@type vim.lsp.Config
return {
  cmd = { 'asm-lsp' },
  filetypes = { 'asm' },
  root_markers = { '.asm-lsp.toml', '.git' },
}
