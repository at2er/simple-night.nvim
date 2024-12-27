local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
  local palette = require("simple-night.palette")
  return {
    luaTableBlock = { fg = palette.tcolors.light_red0 },
  }
end

---@param config? simple-night.Config
function M.setup(config)
  utils.set_hl_groups(groups(config))
end

return M
