local map = vim.keymap.set
local g = vim.g

-- Split window
map('n', 'ss', ':split<CR><C-w>w')
map('n', 'sv', ':vsplit<CR><C-w>w')

-- Move between windows
map.set('', 'sh', '<C-w>h')
map.set('', 'sk', '<C-w>k')
map.set('', 'sj', '<C-w>j')
map.set('', 'sl', '<C-w>l')

