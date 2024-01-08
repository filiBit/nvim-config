local nullLs = require("null-ls")
local masonNullLs = require("mason-null-ls")

masonNullLs.setup({
	ensure_installed = { "stylua", "prettier" },
	automatic_installation = true,
})

local nullLsFormatting = nullLs.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nullLs.setup({
	sources = { nullLsFormatting.stylua, nullLsFormatting.prettier },
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})

vim.keymap.set("n", "<leader>=", ":FormatWrite<CR>")
