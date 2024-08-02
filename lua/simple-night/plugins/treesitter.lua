local M = {}
local utils = require("simple-night.utils")

---@param config simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    if config.extend_colors then
        print()
    end
    -- TODO: Extend palette support.
    --local ext_colors = nil
    --if config.extend_colors then
    --    ext_colors = require("simple-night.extend_palette").colors
    --end

    return {
        ["@variable"] = { fg = palette.tcolors.bright_yellow },
        --["@variable.builtin"] = { link = "" },
        ["@variable.parameter"] = { link = "@variable" },
        --["@variable.parameter.builtin"] = { link = "" },
        ["@variable.menber"] = { link = "@variable" },
        --["@constant"] = { link = "" },
        ["@markup.heading"]   = { fg = palette.tcolors.white, bold = true },
        ["@markup.heading.1"] = { fg = palette.tcolors.bright_white, bold = true },
        ["@markup.heading.2"] = { fg = palette.tcolors.blue, bold = true },
        ["@markup.heading.3"] = { fg = palette.tcolors.bright_blue, bold = true },
        ["@markup.heading.4"] = { fg = palette.tcolors.yellow, bold = true },
        ["@markup.heading.5"] = { fg = palette.tcolors.bright_yellow, bold = true },
        ["@markup.heading.6"] = { fg = palette.tcolors.red, bold = true },
    }
end

---@param config simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
