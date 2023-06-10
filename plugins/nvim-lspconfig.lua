return {
  "neovim/nvim-lspconfig",
  config = function(_, opts)
    require "plugins.configs.lspconfig"(_, opts)
    -- local lspconfig = require "lspconfig"
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single", silent = true })
    vim.lsp.handlers["textDocument/signatureHelp"] =
      vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single", silent = true })
  end,
}
