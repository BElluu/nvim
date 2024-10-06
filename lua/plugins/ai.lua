return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        auto_trigger = true,
        accept = "<M-l>",
        prev = "<M-[>",
        next = "<M-]>",
      },
      panel = {
        enable = false,
      },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    event = "BufEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- Optional
    },
    opts = {
      strategies = {
        inline = {
          adapter = "copilot",
        },
        chat = {
          adapter = "copilot",
          roles = {
            llm = "  Copilot",
          },
        },
        agent = {
          adapter = "copilot",
        },
      },
      display = {
        chat = {
          window = {
            width = 0.25,
          },
        },
      },
    },
    keys = {
      -- stylua: ignore start
      { "<leader>aq", function() local q = vim.fn.input "Ask: " if q ~= "" then vim.cmd("CodeCompanion " .. q) end end, desc = "quick ask" },
      { "<leader>aa", "<cmd>CodeCompanionActions<cr>", mode = { "n", "x" }, desc = "actions" },
      { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "x" }, desc = "toggle" },
      -- stylua: ignore end
    },
  },
}
