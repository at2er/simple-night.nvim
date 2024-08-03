local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        NotifyBackground = { bg = palette.tcolors.bright_black },
    }
end

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
