local config = {}
local palette = require("simple-night.palette")
local utils = require("simple-night.utils")
local M = {}

local function nvim_groups()
    return {
        Normal = {
            bg = config.transparent and "NONE" or palette.tcolors.black,
            fg = palette.tcolors.bright_white
        },
        NormalFloat = {
            bg = config.transparent and "NONE" or palette.tcolors.bright_black,
            fg = palette.tcolors.bright_white
        },
        FloatBorder = { fg = palette.tcolors.bright_black },
        NormalNC = { link = "Normal" },
        SignColumn = { bg = palette.tcolors.black },
        ColorColumn = { bg = palette.tcolors.bright_black },
        Whitespace = { fg = palette.tcolors.white },
        CursorColumn = { bg = palette.tcolors.bright_black },
        CursorLine = { bg = palette.tcolors.bright_black },
        CursorLineNr = { bg = palette.tcolors.black, fg = palette.tcolors.blue },
        LineNr = { fg = palette.tcolors.bright_black },
        TermCursor = { bg = palette.tcolors.bright_white, fg = palette.tcolors.bright_black },
        TermCursorNC = { fg = palette.tcolors.bright_white },
        WinSeparator = { link = "FloatBorder" },
        Visual = { bg = palette.tcolors.bright_black },
        VisualNOS = { bg = palette.tcolors.bright_black },
        Pmenu = { bg = palette.tcolors.bright_black },
        PmenuSel = { bg = palette.tcolors.blue, fg = palette.tcolors.black },
        PmenuKind = { bg = palette.tcolors.bright_black },
        PmenuKindSel = { bg = palette.tcolors.blue, fg = palette.tcolors.black },
        PmenuExtra = { bg = palette.tcolors.bright_black },
        PmenuExtraSel = { bg = palette.tcolors.blue, fg = palette.tcolors.black },
        PmenuSbar = { bg = palette.tcolors.bright_black },
        PmenuThumb = { bg = palette.tcolors.bright_white },
        Search = { bg = palette.tcolors.bright_black },
        IncSearch = { bg = palette.tcolors.cyan },
        CurSearch = { link = "IncSearch" },
        StatusLine = { bg = palette.tcolors.bright_black },
        StatusLineNC = { bg = palette.tcolors.black },
        Question = { fg = palette.tcolors.blue },
        MsgArea = { fg = palette.tcolors.bright_white },
        WarningMsg = { fg = palette.tcolors.yellow },
        ErrorMsg = { fg = palette.tcolors.red },
        MoreMsg = { fg = palette.tcolors.bright_blue },
        Error = { bg = palette.tcolors.red, fg = palette.tcolors.bright_white },
        Todo = { bg = palette.tcolors.bright_blue, fg = palette.tcolors.bright_white },
        Debug = { bg = palette.tcolors.yellow, fg = palette.tcolors.bright_white },
        Identifier = { fg = palette.tcolors.blue },
        Function = { fg = palette.tcolors.bright_blue },
        Statement = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Conditional = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Repeat = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Label = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Exception = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Keyword = { fg = palette.tcolors.bright_red, italic = config.styles.keywords.italic },
        Comment = { fg = palette.tcolors.white, italic = config.styles.comments.italic },

        Constant = { fg = palette.tcolors.yellow },
        String = { fg = palette.tcolors.bright_green },
        Character = { fg = palette.tcolors.green },
        Number = { fg = palette.tcolors.bright_green },
        Boolean = { fg = palette.tcolors.magenta },
        Operator = { fg = palette.tcolors.bright_magenta },
        Include = { fg = palette.tcolors.bright_red, italic = true },
        Define = { fg = palette.tcolors.bright_magenta },
        PreCondit = { fg = palette.tcolors.bright_magenta, italic = true },
        Macro = { fg = palette.tcolors.bright_magenta, italic = true },
        PreProc = { fg = palette.tcolors.bright_magenta, italic = true },
        Type = { fg = palette.tcolors.bright_red },
        Special = { fg = palette.tcolors.cyan },
        SpecialChar = { fg = palette.tcolors.cyan },
        Tag = { fg = palette.tcolors.bright_cyan },
        Delimiter = { fg = palette.tcolors.cyan },
        SpecialComment = { fg = palette.tcolors.white },

        Directory = { fg = palette.tcolors.bright_green },
        Added = { fg = palette.tcolors.bright_green },
        Changed = { fg = palette.tcolors.bright_yellow },
        Removed = { fg = palette.tcolors.bright_red },
        DiffAdd = { bg = palette.tcolors.bright_green },
        DiffChange = { bg = palette.tcolors.bright_yellow },
        DiffDelete = { fg = palette.tcolors.bright_red },
    }
end

function M.init(opts)
    config = opts

    utils.set_hl_groups(nvim_groups())

    for _, name in ipairs(config.plugins) do
        require("simple-night.plugins." .. name).setup(config)
    end
end

return M
