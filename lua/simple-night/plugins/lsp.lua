local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        -- diagnostics
        DiagnosticError = { fg = palette.tcolors.bright_red },
        DiagnosticWarn = { fg = palette.tcolors.bright_yellow },
        DiagnosticInfo = { fg = palette.tcolors.blue },
        DiagnosticHint = { fg = palette.tcolors.bright_blue },
        DiagnosticOk = { fg = palette.tcolors.bright_green },
        DiagnosticDeprecated = { fg = palette.tcolors.white, strikethrough = true },
        DiagnosticUnnecessary = { bold = true, underline = true },

        LspCodeLens = { fg = palette.tcolors.white },
        LspSignatureActiveParameter = { bg = palette.tcolors.bright_black, fg = palette.tcolors.bright_white },
        LspInlayHint = { fg = palette.tcolors.white },

        ["@lsp.typemod.function.defaultLibrary"] = { fg = palette.tcolors.bright_blue },
        ["@lsp.type.namespace"] = { fg = palette.tcolors.bright_red, bold = true },
        ["@lsp.mod.deprecated"] = { fg = palette.tcolors.white, italic = true, strikethrough = true },
        --["@lsp.type.function"] = { link = "@function.call" },
        --["@lsp.type.method"] = { link = "@function.call" },
    }
end

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
