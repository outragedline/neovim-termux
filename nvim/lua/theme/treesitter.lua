local configs = require("nvim-treesitter.configs")
configs.setup {
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true },
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
