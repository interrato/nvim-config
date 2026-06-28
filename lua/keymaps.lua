vim.keymap.set('i', '<cr>', function()
  return vim.fn.pumvisible() == 1 and '<c-y>' or '<cr>'
end, { expr = true })

-- Edit
vim.keymap.set('n', '<leader>ed', '<cmd>lua MiniFiles.open()<cr>')
vim.keymap.set('n', '<leader>ef', '<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<cr>')
vim.keymap.set('n', '<leader>ei', '<cmd>edit $MYVIMRC<cr>')

-- Find
vim.keymap.set('n', '<leader>fb', '<cmd>Pick buffers<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd>Pick diagnostic<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Pick files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Pick grep_live<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>Pick help<cr>')
vim.keymap.set('n', '<leader>fk', '<cmd>Pick keymaps<cr>')
vim.keymap.set('n', '<leader>fr', '<cmd>Pick resume<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Pick lsp scope="workspace_symbol_live"<cr>')

-- Language
vim.keymap.set('n', '<leader>lf', '<cmd>lua require("conform").format()<cr>')

-- LSP (see https://neovim.io/doc/user/lsp/#lsp-defaults)
vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('n', 'grD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
