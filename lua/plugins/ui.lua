return {
	-- Colorscheme
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

	-- Status line
	{ "nvim-lualine/lualine.nvim" },

	-- Syntax highlighting
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
