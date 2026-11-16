-- Plugin configuration for stevearc/conform.nvim
--
-- FILE: config/lua/configs/conform.lua
-- PURPOSE: configure the stevearc/conform.nvim plugin

local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
    },

    format_on_save = {
        -- will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

local event = "BufWritePre" -- provides format on save

return {
    "stevearc/conform.nvim",
    event = event,
    opts = options
}
    
