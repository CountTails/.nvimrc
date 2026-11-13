-- Plugin management via nvim's vim.pack
--
-- FILE: config/lua/core/extensions.lua
-- PURPOSE: utilities for installing, updating, and configuring neovim plugins

-- Uses the provided specification to install the plugin using `vim.pack.add`
---@param spece {src:string,verion:string|nil,name:string|nil}

local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local plugin_files = vim.fs.find(
    function(name) return name:match("%.lua$") ~= nil end,
    {path = plugin_dir, type = "file", limit = math.huge}
)


local specs = {}
local setupfns = {}
for _, file in ipairs(plugin_files) do
    -- Load the plugin spec
    local entry = dofile(file)
    assert(
        type(entry) == "table" and type(entry.install) == "table" and type(entry.setup) == "function",
        "Expected a plugin declaration in " .. file 
    )
    table.insert(specs, entry.install)
    table.insert(setupfns, entry.setup)
end

-- Use `vim.pack.add` to install
vim.pack.add(specs)

-- Call the respective setup function for each plugin
for _, setup in ipairs(setupfns) do
    setup()
end
