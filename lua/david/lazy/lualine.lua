return 
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"meuter/lualine-so-fancy.nvim",
		},
		opts = {
			options = {
				theme = "onedark",
				section_separators = { left = '', right = '' },
				component_separators = { left = '', right = '' },
				globalstatus = true,
				refresh = {
					statusline = 100,
				},
			},
		},
	}
