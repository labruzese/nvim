local gh = function(x) return 'git@github.com:' .. x end

vim.pack.add({
	gh('ellisonleao/gruvbox.nvim'),
	gh('kylechui/nvim-surround'),
	gh('nvim-treesitter/nvim-treesitter'),
	gh('windwp/nvim-autopairs'),
	gh('stevearc/oil.nvim'),
	gh('mbbill/undotree'),
	gh('kdheepak/lazygit.nvim'),
	gh('folke/which-key.nvim'),
	gh('stevearc/oil.nvim'),
})

vim.cmd('colorscheme gruvbox')

require('nvim-autopairs').setup()
require('oil').setup()

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')
vim.keymap.set('n', '-', '<cmd>Oil<CR>')

-- relevant external config
require('autocmds.autosyntax')
