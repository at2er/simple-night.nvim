local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        ["@variable"] = { fg = palette.tcolors.bright_white },
        ["@variable.builtin"] = { fg = palette.tcolors.bright_red },
        ["@variable.parameter"] = { link = "@variable" },
        --["@variable.parameter.builtin"] = { link = "" },
        ["@variable.menber"] = { link = "@variable" },
        ["@function"] = { fg = palette.tcolors.bright_blue },
        ["@function.builtin"] = { fg = palette.tcolors.cyan },
        --["@function.call"] = { fg = palette.tcolors.cyan },
        --["@function.macro"] = { fg = palette.tcolors.bright_cyan },
        ["@attribute"] = { fg = palette.tcolors.bright_red },
        ["@punctuation.delimiter"] = { fg = palette.tcolors.white },
        ["@module"] = { fg = palette.tcolors.bright_red, italic = true },
        ["@keyword.directive"] = { fg = palette.tcolors.bright_magenta, italic = true },
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

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
