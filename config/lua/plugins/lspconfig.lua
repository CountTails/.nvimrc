-- Plugin configuration for neovim/lsp-config
--
-- FILE: config/lua/configs/lsp.lua
-- PURPOSE: plugin configuration for neovim/lsp-config
--

require("nvchad.configs.lspconfig").defaults()

local function init()
    local servers = { "html", "cssls" }
    vim.lsp.enable(servers)
end

return {
    "neovim/nvim-lspconfig",
    config = init
}


