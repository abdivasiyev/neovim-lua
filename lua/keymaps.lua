-- General keymaps that are not pluggin dependant
-- the file "lua/lsp/utils.lua" contains lsp-specific commands.

local Utils = require('utils')

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- kj to normal mode
inoremap("kj", "<Esc>")

-- Run omnifunc, mostly used for autocomplete
inoremap("<C-SPACE>", "<C-x><C-o>")

-- Save with Ctrl + S
nnoremap("<C-s>", ":w<CR>")

-- Close buffer
nnoremap("<C-x>", ":bd<CR>")

-- Move around windows (shifted to the right)
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Switch buffers (needs nvim-bufferline)
nnoremap("<TAB>", ":BufferLineCycleNext<CR>")
nnoremap("<S-TAB>", ":BufferLineCyclePrev<CR>")

-- Splits
nnoremap("ss", ":split<CR>")
nnoremap("sv", ":vsplit<CR>")

-- Populate substitution
nnoremap("<leader>s", ":s//g<Left><Left>")
nnoremap("<leader>S", ":%s//g<Left><Left>")
nnoremap("<leader><C-s>", ":%s//gc<Left><Left><Left>")

vnoremap("<leader>s", ":s//g<Left><Left>")
vnoremap("<leader><A-s>", ":%s//g<Left><Left>")
vnoremap("<leader>S", ":%s//gc<Left><Left><Left>")

-- Yank to end of line
nnoremap("Y", "y$")

-- Copy to system clippboard
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')

-- Paste from system clippboard
nnoremap("<leader><C-v>", '"+p')
vnoremap("<leader><C-v>", '"+p')

-- Clear highlight search
nnoremap("h<CR>", ":nohlsearch<CR>")
vnoremap("h<CR>", ":nohlsearch<CR>")

-- Local list
nnoremap("<leader>lo", ":lopen<CR>")
nnoremap("<leader>lc", ":lclose<CR>")
nnoremap("<C-n>", ":lnext<CR>")
nnoremap("<C-p>", ":lprev<CR>")

-- Quickfix list
nnoremap("<leader>co", ":copen<CR>")
nnoremap("<leader>cc", ":cclose<CR>")
nnoremap("<C-N>", ":cnext<CR>")
nnoremap("<C-P>", ":cprev<CR>")

-- Open file in default application
nnoremap("<leader>xo", "<Cmd> !xdg-open %<CR><CR>")

-- Fugitive
nnoremap("<leader>g", ":G<CR>")
nnoremap("<leader>gh", ":Gclog<CR>")

-- Show line diagnostics
nnoremap("<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>')

-- Open local diagnostics in local list
nnoremap("<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>")

-- Open all project diagnostics in quickfix list
nnoremap("<leader><A-d>", "<Cmd>lua vim.diagnostic.setqflist()<CR>")

-- Telescope
nnoremap("ff", "<Cmd>Telescope find_files<CR>")
nnoremap("fhf","<Cmd>Telescope find_files hidden=true<CR>")
nnoremap("fb", "<Cmd>Telescope buffers<CR>")
nnoremap("fg", "<Cmd>Telescope live_grep<CR>")

nnoremap("<leader>e", ":NERDTreeToggle<CR>")
nnoremap("<leader>b", ":NERDTreeFind<CR>")
-- EasyAlign
-- xmap("ga", "<cmd>EasyAlign")
-- nmap("ga", "<cmd>EasyAlign")

-- Fatih-go keymaps
nnoremap("gs", ":GoImplements<CR>")
nnoremap("gc", ":GoCallers<CR>")

-- Tagbar
nnoremap("tt", ":TagbarToggle<CR>")

-- RestNvim
nnoremap("<leader>rr", ":lua require('rest-nvim').run()<cr>")

-- NeoClip
nnoremap("<leader><S-v>", ":Telescope neoclip a extra=star,plus,b<CR>")

-- Open file in single tab
nnoremap("<leader>z", ":tab split")
nnoremap("<leader>x", ":q")

-- Trouble
nnoremap("xx", ":TroubleToggle<CR>")

-- ToggleTerm
nnoremap("<leader><S-t>", ":ToggleTerm<CR>")
