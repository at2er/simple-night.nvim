local M = {}
local utils = require("simple-night.utils")

---@param config? simple-night.Config
local function groups(config)
    local palette = require("simple-night.palette")
    return {
        NeoTreeDirectoryIcon = { fg = palette.tcolors.bright_blue },
        NeoTreeGitAdded = { fg = palette.tcolors.bright_green },
        NeoTreeGitConflict = { fg = palette.tcolors.bright_yellow },
        NeoTreeGitDeleted = { fg = palette.tcolors.bright_red },
        NeoTreeGitIgnored = { fg = palette.tcolors.bright_black },
        NeoTreeGitModified = { fg = palette.tcolors.bright_red },
        NeoTreeGitUnstaged = { fg = palette.tcolors.bright_red },
        NeoTreeGitUntracked = { fg = palette.tcolors.red },
        NeoTreeGitStaged = { fg = palette.tcolors.green },
    }
end

---@param config? simple-night.Config
function M.setup(config)
    utils.set_hl_groups(groups(config))
end

return M
