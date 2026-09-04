-- ~/.config/nvim/plugins.lua

-- 2. Установка Lazy.nvim (если он еще не установлен)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- последняя стабильная версия
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Плагины
require("lazy").setup({

	{
		-- Тема
		"dracula/vim",
		name = "dracula",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("dracula")
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					javascript = { "prettierd", "prettier" },
					go = { "goimports", "gofmt" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- для иконок
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto", -- автоматически подхватит твою тему Dracula
					-- Добавь сюда свои настройки, если захочешь
				},
			})
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- иконки
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						visible = true, -- показывать скрытые файлы
						hide_dotfiles = false,
						hide_gitignored = false,
					},
				},
				window = {
					width = 30,
				},
			})

			vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", {
				noremap = true,
				silent = true,
			})
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				indent = {
					char = "|",
					highlight = { "Comment" }, -- Цвет как у комментариев
				},
				scope = {
					enabled = false, -- Отключаем подсветку блока (пока нет Treesitter)
				},
			})
		end,
	},
})
