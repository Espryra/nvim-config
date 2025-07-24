require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map("n", "<leader>f", ":!bunx prettier --write %<CR>", { noremap = true, silent = true })
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function()
--     vim.lsp.buf.format({})
--   end
-- })
--
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
