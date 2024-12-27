local M = {}

-- terminal colors
M.tcolors = {
  black          = "#000000",
  red            = "#aa0024",
  green          = "#00aa00",
  yellow         = "#8c4028",
  blue           = "#4444aa",
  magenta        = "#aa00aa",
  cyan           = "#0066aa",
  white          = "#666666",

  bright_black   = "#2c2c2c",
  bright_red     = "#cc1000",
  bright_green   = "#48bb48",
  bright_yellow  = "#bbbb55",
  bright_blue    = "#5555ff",
  bright_magenta = "#bc33cc",
  bright_cyan    = "#0088ff",
  bright_white   = "#999999",
}

M.colors = {
  bg        = M.tcolors.black,
  bright_bg = "#101010",
}

return M
