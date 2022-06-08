opts = { noremap = true, silent = true }
fopts = { noremap = false , silent = true }

-- Shorten function name
keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"

keymap("n" , "<C-s>" , ":w<CR>" , opts)  -- save code
keymap("n" , "<C-x>" , ":qa <CR>" , opts) -- close all files
keymap("n" , "<C-q>" , ":q<CR>" , fopts) -- close current file
keymap("n" , "<C-u>" , ":u <CR>" , opts) --undo
keymap("n" , "<C-r>" , ":redo <CR>" , opts) --redo




-- Resize splits with arrows
keymap("n" , "<C-Up>" , ":resize +2<CR>" , opts)
keymap("n" , "<C-Down>" , ":resize -2<CR>" , opts)
keymap("n" , "<C-Left>" , ":vertical resize -2<CR>" , opts)
keymap("n" , "<C-Right>" , ":vertical resize +2<CR>" , opts)



keymap("v" , "p" , '"_dP' , opts) --"paste"  in visual mode replace selected text with the yanked text

keymap('n' , "<C-a>" , ":NvimTreeToggle<CR>" , opts)





-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
keymap("n" , "<S-n>" ,":BufferLineCycleNext<CR>",opts)
keymap("n" , "<S-p>" , ":BufferLineCyclePrev<CR>" ,  opts)

-- close current buffer
keymap("n" , "<C-d>" , ":bdelete!<CR>" , opts)

-- These commands will move the current buffer backwards or forwards in the bufferline
keymap("n" , "<leader>mn" , ":BufferLineMoveNext<CR>" , opts)
keymap("n" , "<leqder>mp" , ":BufferLineMovePrev<CR>" , opts)

-- These commands will sort buffers by directory, language, or a custom criteria
keymap("n" , "<leader>se" , ":BufferLineSortByExtension<CR>" , opts)
keymap("n" , "<leader>sd" , ":BufferLineSortByDirectory<CR>" , opts)




keymap("n" , "<leader>ff" , "<cmd>Telescope find_files<cr>" , opts)
keymap("n" , "<leader>fg" , "<cmd>Telescope live_grep<cr>" ,opts)
keymap("n" , "<leader>fb" , "<cmd>Telescope buffers<cr>" , opts)
keymap("n" , "<leader>fh" , "<cmd>Telescope help_tags<cr>" , opts)


keymap("n", "<leader>f", ":Format<cr>", opts)
