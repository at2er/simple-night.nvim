local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        IblIndent = { fg = palette.tcolors.bright_black },
        IblWhitespace = { fg = palette.tcolors.bright_black },
        IblScope = { fg = palette.tcolors.bright_blue }
    }
end

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
