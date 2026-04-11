vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'v', 's' }, ' ', '<Nop>')

vim.o.title = true
vim.o.undofile = true
vim.o.number = true
vim.o.smartindent = true
vim.o.winborder = 'rounded'

vim.g.rustfmt_emit_files = 1

require('lsp')
require('plugins')
require('statusline')
