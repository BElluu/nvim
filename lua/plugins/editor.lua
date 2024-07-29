return {
  {
    "folke/flash.nvim",
    opts = {
      --custom configuration here.
    },
  },
  {
    "folke/twilight.nvim",
    opts = {
      --custom configuration here
    },
  },
  {
    {
      "akinsho/bufferline.nvim",
      opts = {
        options = {
          show_buffer_close_icons = false,
        },
      },
      keys = {
        { "<space>t", "<Cmd>BufferLinePick<CR>", desc = "Buffer picker" },
        { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
        { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
        { "<leader>X", "<Cmd>bdelete<CR>", desc = "Close current buffer" },
        { "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>" },
        { "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>" },
        { "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>" },
        { "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>" },
        { "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>" },
        { "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>" },
        { "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>" },
        { "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>" },
        { "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>" },
      },
    },
  },
}
