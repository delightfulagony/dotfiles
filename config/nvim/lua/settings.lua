-- https://github.com/numToStr/dotfiles/blob/master/neovim/.config/nvim/lua/numToStr/settings.lua

local g = vim.g
local o = vim.o

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

o.termguicolors = true
-- o.background = 'dark'

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 4

-- Better editor UI
o.number = true
o.numberwidth = 6
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true

-- Tell vim to change between absolute and hybrid numbers based on focus
o.number = relativenumber
vim.cmd [[
augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
]]

-- Better editing experience
-- o.expandtab = true
o.smarttab = true
-- o.cindent = true
o.autoindent = true
-- o.wrap = true
-- o.textwidth = 300

-- Tell Vim which characters to show for expanded TABs,
-- trailing whitespace, and end-of-lines. VERY useful!
o.list = true
o.listchars = 'tab:>·,trail:-,extends:>,precedes:<,nbsp:+'
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'
-- Also highlight all tabs and trailing whitespace characters
vim.cmd[[highlight ExtraWhitespace ctermfg=8]]
vim.cmd[[match ExtraWhitespace /\s\+$\|\t/]]

-- Set tab length(Good reference 
-- https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990)
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.expandtab = false

-- Display a colored column at 80 characters
--o.colorcolumn = 80
vim.cmd[[set colorcolumn=80]]
vim.cmd[[highlight ColorColumn guibg=#7bb7ac]]

-- Color cursor line
o.cursorline = true
vim.cmd[[highlight cursorline cterm=NONE ctermbg=0]]

-- Highlight matching brackets
o.showmatch = true

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
--o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells
-- neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
