require("rose-pine").setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = "main",
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = "main",
})

-- Set colorscheme after options
vim.cmd("colorscheme rose-pine")
