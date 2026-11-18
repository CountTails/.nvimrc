-- Auto commands specification for neovim
--
-- FILE: config/lua/autocmds.lua
-- PURPOSE: specify the auto commands for the neovim configuration

-- import NvChad's autocmds
require("nvchad.autocmds")

-- additional user-defined autocmds

-- Show Nvdash when all buffers are closed
vim.api.nvim_create_autocmd("BufDelete", {
    callback = function()
        local bufs = vim.t.bufs
        if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
            vim.cmd("Nvdash")
        end
    end,
})
