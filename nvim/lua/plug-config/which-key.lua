-- Map leader to which_key
vim.cmd([[
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
]])

-- Create map to add keys to
vim.g.which_key_map = {}
vim.g.which_key_map = {}
-- Define a separator
vim.g.which_key_sep = "→"
-- set timeoutlen=100

-- Not a fan of floating windows for this
vim.g.which_key_use_floating_win = 0

-- Change the colors if you want
vim.cmd([[
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
]])

-- Hide status line
vim.cmd([[
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
]])

-- s is for search
vim.g.which_key_map = {
  s = {
    name = "+search",
    a = { ":Ag", "text Ag" },
    b = { ":BLines", "current buffer" },
    B = { ":Buffers", "open buffers" },
    c = { ":Commits", "commits" },
    C = { ":BCommits", "buffer commits" },
    f = { ":Files", "files" },
    g = { ":GFiles", "git files" },
    G = { ":GFiles?", "modified git files" },
    h = { ":History", "file history" },
    H = { ":History:", "command history" },
    l = { ":Lines", "lines" },
    m = { ":Marks", "marks" },
    M = { ":Maps", "normal maps" },
    p = { ":Helptags", "help tags" },
    P = { ":Tags", "project tags" },
    s = { ":Snippets", "snippets" },
    S = { ":Colors", "color schemes" },
    t = { ":Rg", "text Rg" },
    T = { ":BTags", "buffer tags" },
    w = { ":Windows", "search windows" },
    y = { ":Filetypes", "file types" },
    z = { ":FZF", "FZF" },
  },
}

-- Register which key map
-- vim.cmd([[
-- call which_key#register('<Space>', "g:which_key_map")
-- ]])
