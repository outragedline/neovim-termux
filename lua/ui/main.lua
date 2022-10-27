require("ui.colorscheme")
require("ui.treesitter")
require("ui.lualine")
require("ui.bufferline")

local icons_status_ok, devicons = pcall(require, "nvim-web-devicons")
if not icons_status_ok then
	return
end

devicons.get_icons()
