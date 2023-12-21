vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set noerrorbells")
vim.cmd("set nowrap")
vim.cmd("set noswapfile")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set cindent")
vim.cmd("set nu rnu")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set mouse+=a")
vim.cmd("set cursorline")
vim.cmd("set termguicolors")

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', {})
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', {})
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', {})
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', {})

vim.keymap.set('n', '<leader>+', ':vertical resize +5<CR>', {})
vim.keymap.set('n', '<leader>-', ':vertical resize -5<CR>', {})
