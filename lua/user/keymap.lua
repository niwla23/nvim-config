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



-- This 'opts' table is crucial for buffer-local mappings
-- and descriptions for things like which-key.
local opts = { noremap = true, silent = true, buffer = bufnr }

-- Go to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

-- Go to declaration (some servers don't implement this)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

-- Go to type definition
vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)

-- Go to implementation
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

-- Show hover documentation
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

-- Show signature help (for function arguments)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

-- Rename symbol
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)

-- Code actions
vim.keymap.set({"n", "v"}, "<F4>", vim.lsp.buf.code_action, opts)

-- Format buffer (using all active servers with formatting capabilities)
-- You might want to make this async for larger files.
-- For a visual selection, `vim.lsp.buf.format()` defaults to the selection.
vim.keymap.set({"n", "v"}, "<F3>", function()
  vim.lsp.buf.format({ async = true })
end, opts)

-- Find references
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

-- Diagnostics navigation
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "gD", vim.diagnostic.open_float, opts) -- Often mapped to K for hover, but lsp-zero might use this for gD
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr })

-- You might also see mappings for workspace symbols or other features.
-- Example for workspace symbols:
-- vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
