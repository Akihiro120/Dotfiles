require "nvchad.options"

-- add yours here!

local o = vim.o

-- use 4 spaces instead of tabs
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- relative line numbers
o.relativenumber = true
o.number = true -- show the current line number as well

o.smartindent = true -- Autoindent new lines
o.autoindent = true -- Copy indent from current line
