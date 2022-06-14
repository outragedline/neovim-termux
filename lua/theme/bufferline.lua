local buffer_status_ok ,bufferline = pcall(require , "bufferline")
if not buffer_status_ok then
	return
end

bufferline.setup{}
