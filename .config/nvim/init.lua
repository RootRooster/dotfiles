-- set the leader key
vim.g.mapleader = " "
vim.wo.wrap = false
-- setup lazy package manager
-- if lazy path does not exist - if not clone the repo
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
-- adds lazypath to runtime path
vim.opt.rtp:prepend(lazypath)

-- PLUGIN SETUPS - INITIALIZE
require("lazy").setup("plugins")
require("options")
require("keymaps")
