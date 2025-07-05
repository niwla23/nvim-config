-- lsp config goes here

-- This will try to format using the attached LSP server
local format_on_save = function(bufnr)
  vim.lsp.buf.format { bufnr = bufnr, async = false }
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
  callback = function(args)
    -- Check if there's an active LSP client that supports formatting
    if vim.lsp.get_clients({ bufnr = args.buf, capabilities = { textDocument = { formatting = { dynamicRegistration = true } } } }) then
      format_on_save(args.buf)
    end
  end,
})

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
-- vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
