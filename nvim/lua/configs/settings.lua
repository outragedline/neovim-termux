vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set nu! ]])
vim.cmd([[ set mouse=a ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])
vim.cmd([[ set cursorline ]])
vim.cmd([[ syntax on ]])
vim.cmd([[set tabstop=2]])
vim.cmd([[set softtabstop=2]])
vim.cmd([[set shiftwidth=2]])
vim.cmd([[set expandtab]])
vim.cmd([[set smarttab]])
vim.cmd([[set smartindent]])
vim.cmd([[set hidden]])
vim.cmd([[set ignorecase]])
vim.cmd([[set smartcase]])
vim.cmd([[set scrolloff=8]])
vim.cmd([[set colorcolumn=100]])
vim.cmd([[set signcolumn=yes]])
vim.cmd([[set cmdheight=2]])
vim.cmd([[set updatetime=100]])
vim.cmd([[set nobackup]])
vim.cmd([[set nowritebackup]])
vim.cmd([[set splitright]])
vim.cmd([[set splitbelow]])
vim.cmd([[set autoread]])
vim.cmd([[filetype on]])
vim.cmd([[filetype plugin on]])
vim.cmd([[filetype indent on]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])




vim.cmd([[
augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
	autocmd FileType * autocmd TextChanged,InsertLeave <buffer> if &readonly == 0 | silent write | endif
augroup END
]])
