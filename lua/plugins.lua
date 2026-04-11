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
	gh('nvim-lua/plenary.nvim'),
	{ src = gh('ThePrimeagen/harpoon'), version = 'harpoon2' }
})

vim.cmd('colorscheme gruvbox')

require('nvim-autopairs').setup()
require('oil').setup()
local hpn = require('harpoon').setup()

vim.keymap.set('n', '<leader>a', function() hpn:list():add() end)
vim.keymap.set('n', '<C-e>', function() hpn.ui:toggle_quick_menu(hpn:list()) end)

vim.keymap.set('n', '<A-q>', function() hpn:list():select(1) end)
vim.keymap.set('n', '<A-w>', function() hpn:list():select(2) end)
vim.keymap.set('n', '<A-e>', function() hpn:list():select(3) end)
vim.keymap.set('n', '<A-r>', function() hpn:list():select(4) end)
vim.keymap.set('n', '<C-S-P>', function() hpn:list():prev() end)
vim.keymap.set('n', '<C-S-N>', function() hpn:list():next() end)

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')
vim.keymap.set('n', '-', '<cmd>Oil<CR>')

-- relevant external config
require('autocmds.autosyntax')
