-- Plugin information for https://github.com/nvim-mini/mimi.nvim
--
-- FILE: config/lua/plugins/mini.lua
-- PURPOSE: specify the installation and setup information for the mini plugin colection

return {
    install = {
        src = "https://github.com/nvim-mini/mini.nvim"
    },
    setup = function()
        -- plugins for better text editing
        require('mini.ai').setup()
        require('mini.comment').setup()
        require('mini.move').setup()
        require('mini.operators').setup()
        require('mini.pairs').setup()
        require('mini.splitjoin').setup()
        require('mini.surround').setup()

        -- plugins for improved general workflows
        require('mini.basics').setup()
        require('mini.cmdline').setup()
        require('mini.diff').setup()
        require('mini.jump').setup()
        require('mini.jump2d').setup()
        require('mini.pick').setup()
        require('mini.sessions').setup()
        require('mini.visits').setup()

        -- plugins for improving neovim's appearance
        require('mini.animate').setup()
        require('mini.cursorword').setup()
        require('mini.icons').setup()
        require('mini.indentscope').setup()
        require('mini.notify').setup()
        require('mini.starter').setup()
        require('mini.statusline').setup()
        require('mini.tabline').setup()
        require('mini.trailspace').setup()
    end
}
