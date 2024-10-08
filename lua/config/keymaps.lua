-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Przechodzenie w lewo
vim.keymap.set("n", "<C-Left>", "<C-w>h", { noremap = true, silent = true })

-- Przechodzenie w dół
vim.keymap.set("n", "<C-Down>", "<C-w>j", { noremap = true, silent = true })

-- Przechodzenie w górę
vim.keymap.set("n", "<C-Up>", "<C-w>k", { noremap = true, silent = true })

-- Przechodzenie w prawo
vim.keymap.set("n", "<C-Right>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("i", "<Tab>", function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, {
  silent = true,
})
