-- ~/.config/nvim/keymaps.lua

local map = vim.keymap.set

-- Открыть neo-tree
map("n", "<leader>e", ":Neotree toggle<CR>", {
	noremap = true,
	silent = true,
})
