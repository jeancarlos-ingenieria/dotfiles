---------------------
-- Neovim settings
---------------------

-- Neovim API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local o = vim.o
local api = vim.api
local ag = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

-- General
g.mapleader = ' '
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false

-- Neovim UI
opt.number = true
opt.relativenumber = true
opt.showmatch = true
opt.foldmethod = 'expr'
opt.colorcolumn = '80'
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true
opt.foldlevel = 99
opt.conceallevel = 0
opt.termguicolors = true
opt.guifont = "Mononoki Nerd Font"
o.cursorline = true
o.number = true
o.termguicolors = true

-- Folding
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesiter#foldexpr()'
opt.list = true
opt.listchars = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'

-- Memory, CPU
opt.hidden = true
opt.history = 1000
opt.lazyredraw = true
opt.synmaxcol = 1000

-- Tabs, indent
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Highlight
-- highlight yanked text
au(
    "TextYankPost",
    {
        pattern = '*',
        callback = function()
            vim.highlight.on_yank { higroup = 'IncSearch', timeout = 700}
        end,
        group = ag('yank_highlight', {}),
    }
)
