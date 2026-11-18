-- Plugin configuration for treesitter
--
-- FILE: config/lua/configs/treesitter.lua
-- PURPOSE: configure treesitter for neovim
--

return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "vim",
            "lua",
            "vimdoc",
            "html",
            "css",
            "python",
            "bash",
            "json",
            "yaml",
        },
    },
}
