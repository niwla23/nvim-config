require("telescope").setup({
  pickers = {
    find_files = {
      hidden = true,
      file_ignore_patterns = { ".git/", "node_modules", ".cache", "%.o", "%.a", "%.out", "%.class", "%.pdf", "%.mkv", "%.mp4", "%.zip" },
    }
  },

  defaults = {
  },
})


local builtin = require('telescope.builtin')

vim.keymap.set({ 'n', 'v', 'i' }, '<C-p>', builtin.find_files, {})
vim.keymap.set({ 'n', 'v' }, '<leader>fc', builtin.commands, {})
vim.keymap.set({ 'n', 'v' }, '<leader>fr', builtin.buffers, {})
vim.keymap.set('n', '<C-f>', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
