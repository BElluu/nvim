local servers = {
  "cssls",
  "gopls",
  "html",
  "jsonls",
  "omnisharp",
  "ts_ls",
  "lua_ls",
}

return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end,
  keys = {
    -- stylua: ignore start
    { "gD", function() vim.lsp.buf.declaration()end, desc = "lsp declaration" },
    { "gd", function() vim.lsp.buf.definition()end, desc = "lsp definition" },
    { "K", function() vim.lsp.buf.hover()end, desc = "lsp hover" },
    { "gi", function() vim.lsp.buf.implementation()end, desc = "lsp implementation" },
    { "gK", function() vim.lsp.buf.signature_help()end, desc = "lsp signature help" },
    { "gy", function() vim.lsp.buf.type_definition()end, desc = "lsp type definition" },
    { "gr", function() vim.lsp.buf.references()end, desc = "lsp references" },
    { "[d", function() vim.lsp.diagnostic.goto_prev()end, desc = "lsp goto prev diagnostic" },
    { "]d", function() vim.lsp.diagnostic.goto_next()end, desc = "lsp goto next diagnostic" },
    {"<leader>Ti", function() vim.lsp.inlay_hint.enable() end, desc = "inlay hint"},
    -- stylua: ignore end
  },
}
