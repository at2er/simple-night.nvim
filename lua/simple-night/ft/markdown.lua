local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
  local palette = require("simple-night.palette")
  return {
    markdownBold = {},
    markdownItalic = {},
    markdownBoldItalic = {},
    markdownStrike = {},
    markdownH1 = {},
    markdownH2 = {},
    markdownH3 = {},
    markdownH4 = {},
    markdownH5 = {},
    markdownH6 = {},
    markdownLinkText = {},
  }
end

---@param config? simple-night.Config
function M.setup(config)
  utils.set_hl_groups(groups(config))
end

return M
