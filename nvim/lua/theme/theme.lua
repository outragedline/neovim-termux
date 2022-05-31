require'nvim-web-devicons'.get_icons()


vim.cmd([[ set bg=dark ]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ colorscheme onedark ]])
require('lualine').setup()

require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})
