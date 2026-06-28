---@type vim.lsp.Config
return {
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  root_markers = { 'go.work', 'go.mod', '.git' },
  settings = {
    gopls = {
      gofumpt = true,
      semanticTokens = true,
      staticcheck = true,
      hints = {
        constantValues = true,
        ignoredError = true,
        rangeVariableTypes = true,
      },
    },
  },
}
