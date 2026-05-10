-- opts
vim.o.number = true
vim.o.relativenumber = true
vim.opt.syntax = "on"
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true 
vim.diagnostic.enable(false)

-- bindings
vim.g.mapleader = " "
vim.keymap.set ('n', '<leader>t', ':tabnew | Ex<CR>', { silent = true })
vim.keymap.set ('n', '<leader>qt', ':tabclose<CR>', { silent = true })
vim.keymap.set ('n', '<leader>sv', ':new<CR>', { silent = true })
vim.keymap.set ('n', '<leader>sh', ':vnew<CR>', { silent = true })

-- plugins
vim.pack.add {
	'https://github.com/windwp/nvim-autopairs',
	'https://github.com/ellisonleao/gruvbox.nvim',
	'https://github.com/lukas-reineke/indent-blankline.nvim',
	'https://github.com/kawre/neotab.nvim',
	'https://github.com/nvim-lualine/lualine.nvim',
	{ src = 'https://github.com/saghen/blink.cmp', version = 'v1' },
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/mason-org/mason-lspconfig.nvim',
}

-- configs
vim.cmd.colorscheme('gruvbox')
require('nvim-autopairs').setup()
require('ibl').setup()
require('neotab').setup()
require('lualine').setup {
    options = {
	    icons_enabled = false,
	    component_separators = { left = '::', right = '::' },
	    section_separators = { left = '::', right = '' },
	    },
    sections = {
	    lualine_a = {},
	    lualine_b = {'mode'},
	    lualine_c = {'filename', 'branch', 'diff'},
	    lualine_x = {'fileformat', 'filetype', 'location'},
	    lualine_y = {},
	    lualine_z = {},
    }
}
require('blink.cmp').setup {
	keymap = { preset = 'enter' },

	appearance = {
		nerd_font_variant = 'mono'
	},

	completion = {
		menu = {
		    auto_show = true,
		}
},
	sources = {
	  default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
}
require('mason').setup()
require('mason-lspconfig').setup()
