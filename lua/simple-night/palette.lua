local M = {}

-- terminal colors
M.tcolors = {
    black          = "#14161b",
    red            = "#A92222",
    green          = "#3BA92B",
    yellow         = "#C29D3E",
    blue           = "#6FA3F8",
    magenta        = "#B838AC",
    cyan           = "#3990BF",
    white          = "#62676D",

    bright_black   = "#252B35",
    --bright_black   = "#62676D",
    bright_red     = "#ED4646",
    bright_green   = "#63F063",
    bright_yellow  = "#EFBF58",
    bright_blue    = "#3E71C2",
    bright_magenta = "#D266C7",
    bright_cyan    = "#52CEE7",
    bright_white   = "#C6CCF4",
}

---@deprecated
M.colors = {
    -- dark colors
    dark0 = "#090b0f",
    dark1 = "#14161b",
    dark2 = "#1a1d23",
    gray0 = "#07080d",
    blue0 = "#285992",
    blue1 = "#5871e2",
    blue2 = "#6981F0",
    red0 = "#b12729",

    -- light colors
    light0 = "#e0e2ea",
    light1 = "#a5a8af",
    light_gray0 = "#c4c6cc",
    light_gray1 = "#5f6168",
    light_gray2 = "#45484f",
    light_yellow0 = "#fce094",
    light_red0 = "#e74343",
    light_green0 = "#98eb82",
    light_green1 = "#64b842",
    light_blue0 = "#7baee9",
    light_blue1 = "#3f79bb",
    light_blue2 = "#215a9b",
    light_orange0 = "#cb871f",
    light_purple0 = "#c182d3",
    light_pink0 = "#ea8bef",
}

return M
