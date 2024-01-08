-- set <leader> key first, before the rest of keybindings in subsequent configs
vim.g.mapleader = " "

require("filibit/plugins")
require("filibit/static-analysis")
require("filibit/formatting")
require("filibit/telescope-config")
require("filibit/color-scheme")

vim.o.guicursor = ""
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.scrolloff = 8
vim.o.termguicolors = true
vim.o.updatetime = 50
vim.o.colorcolumn = "80"
