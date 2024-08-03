local M = {}

---@class simple-night.Config
M.default = {
    extend_colors = false,
    transparent = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
    },
    plugins = {
        "cmp",
        "ibl",
        "neotree",
        "treesitter",
        "lsp",
        "notify",
    },
}

---@type simple-night.Config
M.config = M.default

---@param opts? simple-night.Config
function M.init (opts)
    M.config = opts and vim.tbl_deep_extend("force", M.default, opts) or M.default
end

return M
