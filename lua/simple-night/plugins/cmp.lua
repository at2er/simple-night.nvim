local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        CmpItemAbbr = { fg = palette.tcolors.bright_white },
        CmpItemAbbrDeprecated = {
            fg = palette.tcolors.bright_red,
            italic = true,
            strikethrough = true
        },
        CmpItemAbbrMatch = { fg = palette.tcolors.bright_blue, italic = true },
        CmpItemAbbrMatchFuzzy = {
            fg = palette.tcolors.blue,
            italic = true,
            underline = true
        },
        CmpItemMenu = { fg = palette.tcolors.bright_magenta, italic = true },

        CmpItemKindClass = { fg = palette.tcolors.bright_red },
        CmpItemKindColor = { fg = palette.tcolors.cyan },
        CmpItemKindConstant = { fg = palette.tcolors.yellow },
        CmpItemKindConstructor = { fg = palette.tcolors.bright_red },
        CmpItemKindEnum = { fg = palette.tcolors.cyan },
        CmpItemKindEnumMember = { fg = palette.tcolors.cyan },
        CmpItemKindEvent = { fg = palette.tcolors.bright_yellow },
        CmpItemKindField = { fg = palette.tcolors.green },
        CmpItemKindFunction = { fg = palette.tcolors.red },
        CmpItemKindInterface = { fg = palette.tcolors.bright_blue },
        CmpItemKindKeyword = { fg = palette.tcolors.bright_red },
        CmpItemKindMethod = { fg = palette.tcolors.bright_red },
        CmpItemKindModule = { fg = palette.tcolors.bright_red },
        CmpItemKindOperator = { fg = palette.tcolors.bright_red },
        CmpItemKindProperty = { fg = palette.tcolors.magenta },
        CmpItemKindReference = { fg = palette.tcolors.bright_red },
        CmpItemKindSnippet = { fg = palette.tcolors.bright_magenta },
        CmpItemKindStruct = { fg = palette.tcolors.bright_cyan },
        CmpItemKindTypeParameter = { fg = palette.tcolors.bright_red },
        CmpItemKindUnit = { fg = palette.tcolors.bright_magenta },
        CmpItemKindValue = { fg = palette.tcolors.green },
        CmpItemKindVariable = { fg = palette.tcolors.bright_blue },
    }
end

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
