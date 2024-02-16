local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Tell Vim to scape terminal with <ESC>
map('t', '<ESC>', '<C-\\><C-n>')

-- Configure vim panels to be more intuitive
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')
