return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config('pyright', {})
    vim.lsp.config('clangd', {})
    vim.lsp.config('kotlin_language_server', {})

    vim.lsp.enable('pyright')
    vim.lsp.enable('clangd')
    vim.lsp.enable('kotlin_language_server')
  end,
}
