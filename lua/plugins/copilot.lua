local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
	return
end

copilot.setup({
	panel = {
		enabled = true,
	},
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<A-Tab>",
			next = "<A-]>",
			prev = "<A-[>",
			dismiss = "<C-]>",
		},
	},
})
