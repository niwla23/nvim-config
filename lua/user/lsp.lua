-- lsp config goes here

-- This will try to format using the attached LSP server
local format_on_save = function(bufnr)
  vim.lsp.buf.format { bufnr = bufnr, async = true }
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
  callback = function(args)
    -- Check if there's an active LSP client that supports formatting
    if vim.lsp.get_active_clients({ bufnr = args.buf, capabilities = { textDocument = { formatting = { dynamicRegistration = true } } } }) then
      format_on_save(args.buf)
    end
  end,
})
