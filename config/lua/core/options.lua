-- Builtin neovim behavior settings
--
-- FILE: config/lua/core/options.lua
-- PURPOSE: define neovim's builtin behavior to improve overall usability
--

-- Filetype detection, plugins, colors, and syntax highlighting
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.opt.termguicolors = false
vim.cmd.colorscheme("vim")

-- Line numbers and cursor highlighting
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_set_hl(0, "CursorLine", {bold=true})

-- Indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = false

-- General behavior
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showcmd = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
vim.opt.wildignore = {
  "*.docx",
  "*.jpg",
  "*.png",
  "*.gif",
  "*.pdf",
  "*.pyc",
  "*.exe",
  "*.flv",
  "*.img",
  "*.xlsx",
}

-- Status line
-- vim.opt.statusline =
--  " %f %m %y %r%= ascii: %b hex: 0x%B row: %l col: %c percent: %p%%"
-- vim.opt.laststatus = 2
