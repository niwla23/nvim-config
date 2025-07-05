local lsp0 = require('lsp-zero').preset({})

lsp0.on_attach(function(client, bufnr)
  lsp0.default_keymaps({ buffer = bufnr, preserve_mappings = false })
  lsp0.buffer_autoformat()
end)



lsp0.set_sign_icons({
  error = '😭',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp0.ensure_installed({
  'ts_ls',
  'eslint',
  'tailwindcss',
  'lua_ls',
  'bashls',
  'gopls',
  'rust_analyzer'
})


-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')
local util = require "lspconfig/util"

-- lua lsp
lspconfig.lua_ls.setup(lsp0.nvim_lua_ls())

-- go lsp
lspconfig.gopls.setup {
  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})

lsp0.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})


local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
})
