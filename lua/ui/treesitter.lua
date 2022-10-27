local TS_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not TS_status_ok then
	return
end

local synxtax_disable_list = {} --add a language  here to disable TreeSitter highlight for this lang
local indent_disable_list = {"python"} --add a language  here to disable TreeSitter indent for this lang


configs.setup {
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
		disable = {synxtax_disable_list}

  },
  indent = { enable = true,
disable = indent_disable_list
},
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs = {
		enable = true,
	},
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
