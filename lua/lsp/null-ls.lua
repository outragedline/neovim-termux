local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		--formatting binaries
		formatting.autopep8, -- python
		--[[ formatting.google_java_format, ]]
		formatting.stylua, --lua
		--[[ formatting.xmllint, -- XML ]]

		-- linters / diagnostics binaries
		diagnostics.flake8, -- python
		--[[ diagnostics.tidy, -- XML ]]
	},
})
