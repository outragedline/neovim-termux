vim.g.mapleader = "-"
local opts = { noremap = true, silent = true }
local fopts = { noremap = false, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"

keymap("n", "<C-s>", "<cmd> w<CR>", opts) -- save file
keymap("n", "<A-s>", "<cmd> wa<CR>", opts) -- save all files
keymap("n", "<C-x>", "<cmd> qa <CR>", opts) -- close all files
keymap("n", "<C-q>", "<cmd> q<CR>", fopts) -- close current file
keymap("n", "<C-u>", "<cmd> u <CR>", opts) --undo
keymap("n", "<C-r>", "<cmd> redo <CR>", opts) --redo



--create splits
keymap("n", "<C-h>", "<cmd> split<CR>", opts) --hotizontal split
keymap("n", "<C-j>", "<cmd> vsplit<CR>", opts) -- vertical split



-- Resize splits with arrows
keymap("n", "<C-Up>", "<cmd> resize +2<CR>", opts)
keymap("n", "<C-Down>", "<cmd> resize -2<CR>", opts)
keymap("n", "<C-Left>", "<cmd> vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<cmd> vertical resize +2<CR>", opts)

keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)



-- visual mappings
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '_dP', fopts) --"paste"  in visual mode replace selected text with the yanked text




keymap('n', "<C-a>", "<cmd> NvimTreeToggle<CR>", opts)





-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
keymap("n", "<C-n>", "<cmd> BufferLineCycleNext<CR>", opts)
keymap("n", "<C-p>", "<cmd> BufferLineCyclePrev<CR>", opts)

-- close current buffer
keymap("n", "<C-d>", "<cmd> bdelete!<CR>", opts)

-- These commands will move the current buffer backwards or forwards in the bufferline
keymap("n", "<leader>mn", "<cmd> BufferLineMoveNext<CR>", opts)
keymap("n", "<leqder>mp", "<cmd> BufferLineMovePrev<CR>", opts)

-- These commands will sort buffers by directory, language, or a custom criteria
keymap("n", "<leader>se", "<cmd> BufferLineSortByExtension<CR>", opts)
keymap("n", "<leader>sd", "<cmd> BufferLineSortByDirectory<CR>", opts)



--Telescope mappings
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)



-- formatting code
keymap("n", "<C-f>", "<cmd> lua vim.lsp.buf.formatting()<cr>", opts)


-- toggle  signature
keymap("i", "<C-s>", "<cmd> lua vim.lsp.buf.signature_help() <CR>", opts)



--Gitsigns
keymap("n", "<leader>gs", "<cmd> Gitsigns show<CR>", opts)
keymap("n", "<leader>gd", "<cmd> Gitsigns toggle_deleted<CR>", opts)
keymap("n", "<leader>gt", "<cmd> Gitsigns diffthis<CR>", opts)
