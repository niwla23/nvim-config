-- :help optionsds
vim.opt.backup = false -- creates a backup file
vim.opt.swapfile = false

-- persist undo history
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.conceallevel = 0          -- so that `` is visible in markdown files
vim.opt.hlsearch = true           -- highlight all matches on previous search pattern
vim.opt.ignorecase = true         -- ignore case in search patterns
vim.opt.mouse = "a"               -- allow the mouse to be used in neovim
vim.opt.pumheight = 10            -- pop up menu height
vim.opt.smartcase = true          -- smart case
vim.opt.smartindent = true        -- make indenting smarter again
vim.opt.splitbelow = true         -- force all horizontal splits to go below current window
vim.opt.splitright = true         -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false          -- creates a swapfile
vim.opt.timeoutlen = 1000         -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true           -- enable persistent undo
vim.opt.updatetime = 50           -- faster completion (4000ms default)
vim.opt.writebackup = false       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true          -- convert tabs to spaces
vim.opt.shiftwidth = 2            -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2               -- insert 2 spaces for a tab
vim.opt.cursorline = true         -- highlight the current line
vim.opt.number = true             -- set numbered lines
vim.opt.relativenumber = true     -- set relative numbered lines
vim.opt.numberwidth = 4           -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"        -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false              -- display lines as one long
vim.opt.scrolloff = 8             -- min lines arround cursor
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
-- vim.api.nvim_exec('language en_US', true)

vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'

--vim.opt.shortmess:append "c"

--vim.cmd "set whichwrap+=<,>,[,],h,l"
--vim.cmd [[set iskeyword+=-]]
--vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
