-- stylua: ignore start

vim.opt.completeopt = { 'menu', 'menuone', 'popup', 'noselect', 'fuzzy' } -- great completion menu
vim.opt.pumheight = 12    -- limit number of completion items
vim.opt.pummaxwidth = 100 -- limit horizontal size of completion list

vim.opt.foldlevel = 100     -- start with all folds opened
vim.opt.foldmethod = 'expr' -- use tree-sitter folding
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

vim.opt.clipboard = { 'unnamed', 'unnamedplus' } -- use operating system clipboards

vim.opt.mouse = 'a'           -- always enable mouse

vim.opt.termguicolors = true  -- force 24-bit color

vim.opt.cursorline = true     -- show cursor line

vim.opt.number = true         -- show current line number
vim.opt.relativenumber = true -- use relative line numbers

vim.opt.signcolumn = 'yes'    -- always show sign column

vim.opt.diffopt:append('linematch:60') -- improve diff mode lines alignment

vim.opt.confirm = true     -- show dialog for unsaved files
vim.opt.updatetime = 200   -- save swap file with 200ms debouncing

vim.opt.ignorecase = true  -- case-insensitive search
vim.opt.smartcase = true   -- uppercase characters enable case-sensitive search

vim.opt.smartindent = true -- automatic indent on newline
vim.opt.shiftround = true  -- round indent to multiple of 'shiftwidth'
vim.opt.shiftwidth = 0     -- follow 'tabstop'
vim.opt.tabstop = 4        -- tab width

vim.opt.undofile = true    -- persistent undo history
vim.opt.undolevels = 10000 -- more undo levels

vim.g.mapleader = vim.keycode('<space>') -- define <leader> key

-- stylua: ignore end
