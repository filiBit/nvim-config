local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- Manage global binaries (language servers and formatters) from neovim
Plug("williamboman/mason.nvim", { tag = "v1.8.3" })
Plug("williamboman/mason-lspconfig.nvim", { tag = "v.1.25.0" })
Plug("jay-babu/mason-null-ls.nvim", { tag = "v2.3.0" })

-- LSP Support
Plug("neovim/nvim-lspconfig", { tag = "v0.1.7" })
Plug("VonHeikemen/lsp-zero.nvim", { branch = "v3.x" })

-- Improve syntax highlighting
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })

-- Autocompletion
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("L3MON4D3/LuaSnip", { tag = "v2.2.0" })

-- Trigger code formatting
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("nvim-lua/plenary.nvim") -- dependency of null_ls

-- Project related: file search, term search, file browse
Plug("nvim-telescope/telescope.nvim", { tag = "0.1.4" })
Plug("nvim-telescope/telescope-file-browser.nvim")
Plug("nvim-lua/plenary.nvim") -- dependency of telescope

-- Color scheme
Plug("rose-pine/neovim", { as = "rose-pine", tag = "v2.0.0" })

vim.call("plug#end")
