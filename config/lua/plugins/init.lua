-- Plugin information for https://github.com/nvim-mini/mimi.nvim
--
-- FILE: config/lua/plugins/mini.lua
-- PURPOSE: specify the installation and setup information for the mini plugin colection

return {
    require("configs.conform"),
    require("configs.lsp"),
    require("configs.blink"),
    require("configs.treesitter"),
}

