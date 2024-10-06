return {
  "williamboman/mason.nvim",
  opts = {},
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      max_concurrent_installers = 10,
      ui = {
        icons = {
          package_installed = "",
          package_not_installed = "",
          package_pending = "➜",
          package_uninstalled = "",
        },
        border = "single",
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "cssls",
        "gopls",
        "html",
        "jsonls",
        "omnisharp",
        "ts_ls",
        "lua_ls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "csharpier",
        "netcoredbg",
        "xmlformatter",
        "eslint",
        "gopls",
      },
    })
  end,
}
