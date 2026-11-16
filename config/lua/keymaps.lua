-- Custom keymappings
--
-- FILE: config/lua/core/keymaps.lua
-- PURPOSE: defines custom key mappings for neovim

-- import nvchad keymaps
require("nvchad.mappings")

-- additional custom keymaps
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
