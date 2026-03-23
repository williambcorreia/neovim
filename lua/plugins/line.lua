return {
    'nvim-lualine/lualine.nvim',
    config = function ()
	    require('lualine').setup {
	    options = {
		    icons_enabled = false,
		    component_separators = { left = '::', right = '::' },
		    section_separators = { left = '::', right = '' },
	    },
	    sections = {
		    lualine_a = {},
		    lualine_b = {'mode'},
		    lualine_c = {'filename', 'branch', 'diff', 'diagnostics'},
		    lualine_x = {'fileformat', 'filetype', 'location'},
		    lualine_y = {},
		    lualine_z = {},
	    }
	  }
	end
}
