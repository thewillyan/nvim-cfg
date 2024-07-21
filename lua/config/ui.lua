-- Set colorscheme
vim.cmd("colorscheme moonbow")

-- Set lines
vim.opt.relativenumber = true

-- Set vertical line at the 80th character
vim.opt.colorcolumn = "100"

-- Indentation
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Style status line
require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = "moonbow",
	},
})

-- Configure syntax highlighting
require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "markdown", "markdown_inline", "go", "rust", "python" },
	sync_install = false,
	auto_install = false,

	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = true,
	},
})
