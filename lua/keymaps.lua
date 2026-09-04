-- ~/.config/nvim/keymaps.lua

local map = vim.keymap.set

-- Открыть neo-tree
map("n", "<leader>e", ":Neotree toggle<CR>", {
	noremap = true,
	silent = true,
})

-- Выход из режима вставки через jj
vim.keymap.set("i", "jj", "<Esc>", {
	noremap = true,
	silent = true,
})

-- Быстрое сохранение
vim.keymap.set("n", "<leader>w", ":w<CR>", {
	noremap = true,
	silent = true,
})

-- Быстрое закрытие
vim.keymap.set("n", "<leader>q", ":q<CR>", {
	noremap = true,
	silent = true,
})

-- Сохранить всё и выйти
vim.keymap.set("n", "<leader>x", ":xa<CR>", {
	noremap = true,
	silent = true,
})
