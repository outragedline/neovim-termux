require("theme.colorscheme")
require("theme.treesitter")
require('theme.lualine')
require('theme.bufferline')

local icons_status_ok , devicons = pcall(require , "nvim-web-devicons")
if not icons_status_ok then
	return
end

devicons.get_icons()
