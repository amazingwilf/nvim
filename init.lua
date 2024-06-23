-------------
-- options --
--------------

vim.opt.number = true		
vim.opt.numberwidth = 2
vim.opt.relativenumber = true

vim.opt.splitbelow = true	
vim.opt.splitright = true

vim.opt.signcolumn = "no"
vim.opt.cursorline = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

--------------
-- Keybinds --
--------------

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>/", ":CommentToggle<CR>", { desc = "Toggle commenting" })


------------------------------
-- lazy.nvim plugin manager --
------------------------------

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
vim.opt.rtp:prepend(lazypath)

-------------------
-- setup plugins --
-------------------

require("lazy").setup({
    "rebelot/kanagawa.nvim",
    "navarasu/onedark.nvim",
    "norcalli/nvim-colorizer.lua",
    "windwp/nvim-autopairs",
    "terrortylor/nvim-comment",
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    'akinsho/bufferline.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
})

vim.cmd.colorscheme("kanagawa-dragon")

require 'colorizer'.setup()

require 'nvim-autopairs'.setup()

require('nvim_comment').setup()

require('lualine').setup()

require('bufferline').setup()
