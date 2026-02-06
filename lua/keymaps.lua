local set = vim.keymap.set

-- Yanking
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true })

-- Terminal Shit
vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("n", "<leader>h", function ()
	vim.cmd("botright split | resize 12 | terminal")
end, { noremap = true })

-- Windows Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })


-- Telescope
local builtin = require("telescope.builtin")
set("n", "<leader>ff", builtin.find_files, {})

-- Tree
set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
