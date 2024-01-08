local lsp_zero = require("lsp-zero")
local cmp = require("cmp")

-- Diagnostics, completions
lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- Manage installation of language servers
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "tsserver", "lua_ls", "eslint", "cssls" },
	handlers = { lsp_zero.default_setup },
})

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		["<CR>"] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})

-- Improve syntax highlighting
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
	},
})
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
