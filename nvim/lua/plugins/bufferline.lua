require('bufferline').setup {}


-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
vim.cmd([[nnoremap <leader>bn :BufferLineCycleNext<CR>]])
vim.cmd([[nnoremap <leader>bp :BufferLineCyclePrev<CR>]])

-- close current buffer
vim.cmd([[nmap <leader>bd :bdelete<CR>]])

-- These commands will move the current buffer backwards or forwards in the bufferline
vim.cmd([[nnoremap <leader>mbn :BufferLineMoveNext<CR>]])
vim.cmd([[nnoremap <leqder>mbp :BufferLineMovePrev<CR>]])

-- These commands will sort buffers by directory, language, or a custom criteria
vim.cmd([[nnoremap <leader>sbe :BufferLineSortByExtension<CR>]])
vim.cmd([[nnoremap <leader>sbd :BufferLineSortByDirectory<CR>]])


