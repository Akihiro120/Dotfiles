-- core
local opts = vim.opt
local ops = vim.o

-- ops
ops.winbar = " "

-- Line numbers
opts.number = true
opts.relativenumber = true
opts.cursorline = true
opts.cursorlineopt = "number"

-- Indentation
opts.tabstop = 4
opts.shiftwidth = 4
opts.softtabstop = 4
opts.expandtab = true
opts.smartindent = true

-- Visual
opts.termguicolors = true
opts.fillchars = "eob: "
