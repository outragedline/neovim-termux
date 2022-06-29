local set = vim.opt --short vim.opt in set variable

set.fileencoding = "utf-8"
set.mouse="a"
set.incsearch = true 
set.tabstop=2 
set.softtabstop=2
set.shiftwidth=2
set.smarttab = true
set.smartindent = true
set.ignorecase = false
set.smartcase = true
set.scrolloff=8
set.sidescrolloff=8
set.updatetime=100
set.backup = false
set.writebackup = false
set.swapfile = false
set.splitright = true
set.splitbelow = true
set.autoread = true
set.hidden = true
set.signcolumn = "yes"
set.cursorline = true 
set.number = true  -- enable line number
set.numberwidth = 3
set.cmdheight=2
set.termguicolors = true
set.title = true
set.clipboard = "unnamedplus"
set.confirm = true

-- filetype
set.filetype =  "on"
set.filetype =  "plugin"
set.filetype =  "indent"

-- fold
set.foldmethod = "indent"

-- autosave
set.autowriteall = false
set.autowrite = false

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
