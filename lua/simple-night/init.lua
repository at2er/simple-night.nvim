local config = require("simple-night.config")
local groups = require("simple-night.groups")
local M = {}

---@param opts? simple-night.Config
function M.setup(opts)
    config.init(opts)
end

function M.load()
    groups.init(config.config)
end

return M
