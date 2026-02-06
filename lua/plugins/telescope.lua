return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					prompt_prefix = "  ",
					selection_caret = "❯ ",
					path_display = { "smart" },
					file_ignore_patterns = { "%.git/", "node_modules/", "dist/", "%.cache/" },
				},
			})
		end,
	},
}

