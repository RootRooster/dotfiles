-- For inforamtions about the options type; :h <option>
-- <option> being autoindent, number,tabstop...
--

-- tree like structure navigation
vim.cmd("let g:netrw_liststyle = 3")

-- num row related settings
-- shows how many numbers above/below something is
vim.opt.relativenumber = true
-- shows current line number
vim.opt.number = true

-- for prettier tabs and indentation
-- this replaces the tab character with spaces
vim.opt.expandtab = true
-- tabstop defines how many spaces a tab takes
vim.opt.tabstop = 2
-- number of spaces when tab key is pressed in insert mode
vim.opt.softtabstop = 2
-- number of spaces for each indentation level
-- used with >>, << ...
vim.opt.shiftwidth = 2

-- when searching ignore capital letters
vim.opt.ignorecase = true
-- except when using capital letters
vim.opt.smartcase = true

-- do not brake line, if too long
vim.opt.wrap = false

-- set the default yank to be to clipboard
vim.api.nvim_set_option("clipboard","unnamed")
