-- ~/.config/nvim/options.lua

-- Включаем относительные номера строк (полезно для навигации)
vim.opt.number = true
vim.opt.relativenumber = true

-- Включаем подсветку синтаксиса
vim.opt.syntax = "on"

-- Размер табуляции – 4 пробела (можно позже поменять под свой вкус)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Перенос строк по словам (мягкий перенос)
vim.opt.wrap = false   -- если хочешь без переноса, оставь false

-- УСТАНАВЛИВАЕМ ЛИДЕР (обязательно как строка)
vim.g.mapleader = " "

-- ОТКЛЮЧАЕМ СВОП-ФАЙЛЫ
vim.opt.swapfile = false
