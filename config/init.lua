-- Neovim configuration entry point
--
-- FILE: config/init.lua
-- PURPOSE: bootstrap and initialize the neovim configuration
--

local function load(mod)
  package.loaded[mod] = nil
  require(mod)
end

load("core.options")
load("core.keymaps")
load("core.extensions")

