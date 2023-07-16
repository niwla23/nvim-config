local builtin = require('telescope.builtin')

vim.keymap.set({ 'n', 'v', 'i' }, '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<leader>fe', vim.cmd.Ex)             -- open explorer
vim.keymap.set({ "n", "v", "i" }, '<C-s>', vim.cmd.write) -- save file
vim.keymap.set("n", "<leader>o", 'o<Esc>0"_D')
vim.keymap.set("n", "<leader>O", 'O<Esc>0"_D')

-- move lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste and keep buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- internal copy with <leader>y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- delete
vim.keymap.set("n", "<leader>d", [["_dd]])
