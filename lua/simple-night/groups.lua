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
    NormalNC      = { link = "Normal" },
    FloatBorder   = { fg = palette.tcolors.bright_black },
    SignColumn    = { bg = palette.tcolors.black },
    ColorColumn   = { bg = palette.colors.bright_bg },
    CursorColumn  = { bg = palette.colors.bright_bg },
    CursorLine    = { bg = palette.colors.bright_bg },
    CursorLineNr  = { bg = palette.tcolors.black, fg = palette.tcolors.bright_yellow },
    LineNr        = { fg = palette.tcolors.bright_black },
    TermCursor    = { bg = palette.tcolors.bright_white, fg = palette.tcolors.bright_black },
    TermCursorNC  = { fg = palette.tcolors.bright_white },
    Visual        = { bg = palette.tcolors.white, fg = palette.tcolors.black },
    VisualNOS     = { link = "Visual" },
    Whitespace    = { fg = palette.tcolors.bright_black },
    WinSeparator  = { link = "FloatBorder" },
    Pmenu         = { bg = palette.colors.bright_bg },
    PmenuSel      = { bg = palette.tcolors.blue, fg = palette.tcolors.black },
    PmenuKind     = { link = "Pmenu" },
    PmenuKindSel  = { link = "PmenuSel" },
    PmenuExtra    = { link = "Pmenu" },
    PmenuExtraSel = { link = "PmenuSel" },
    PmenuSbar     = { link = "Pmenu" },
    PmenuThumb    = { bg = palette.tcolors.white },
    Search        = { fg = palette.tcolors.black, bg = palette.tcolors.bright_yellow },
    IncSearch     = { fg = palette.tcolors.black, bg = palette.tcolors.white },
    CurSearch     = { link = "IncSearch" },
    StatusLine    = { bg = palette.colors.bright_bg },
    StatusLineNC  = { bg = palette.tcolors.black },
    Question      = { fg = palette.tcolors.bright_blue },
    MsgArea       = { fg = palette.tcolors.bright_white },
    WarningMsg    = { fg = palette.tcolors.yellow },
    ErrorMsg      = { fg = palette.tcolors.red },
    MoreMsg       = { fg = palette.tcolors.bright_blue },
    Error         = { bg = palette.tcolors.red, fg = palette.tcolors.bright_white },
    Todo          = { bg = palette.tcolors.bright_blue, fg = palette.tcolors.bright_white },
    Debug         = { bg = palette.tcolors.yellow, fg = palette.tcolors.bright_white },

    -- syntax
    Comment     = { fg = palette.tcolors.blue },
    Number      = { fg = palette.tcolors.bright_blue },
    Constant    = { link = "Special" },
    String      = { fg = palette.tcolors.bright_green },
    Character   = { link = "String" },
    Identifier  = { fg = palette.tcolors.bright_white },
    Function    = { fg = palette.tcolors.white },
    Statement   = { link = "Special" },
    PreProc     = { link = "Special" },
    Type        = { fg = palette.tcolors.yellow },
    Special     = { fg = palette.tcolors.yellow },
    SpecialChar = { link = "Character" },
    Operator    = { fg = palette.tcolors.bright_white },
    Delimiter   = { fg = palette.tcolors.white },

    Directory  = { fg = palette.tcolors.bright_green },
    Added      = { fg = palette.tcolors.bright_green },
    Changed    = { fg = palette.tcolors.bright_yellow },
    Removed    = { fg = palette.tcolors.bright_red },
    DiffAdd    = { bg = palette.tcolors.bright_green },
    DiffChange = { bg = palette.tcolors.bright_yellow },
    DiffDelete = { fg = palette.tcolors.bright_red },

    MatchParen = { bg = palette.tcolors.cyan },

    markdownH1 = { fg = palette.tcolors.bright_red },
    markdownH2 = { fg = palette.tcolors.bright_yellow },
    markdownH3 = { fg = palette.tcolors.bright_green },
    markdownH4 = { fg = palette.tcolors.bright_magenta },
    markdownH5 = { fg = palette.tcolors.bright_cyan },
    markdownH6 = { fg = palette.tcolors.bright_blue },
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
