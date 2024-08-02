local M = {}

---Encapsulation of 'vim.api.nvim_set_hl'
---@param name string highlight name
---@param val table highlight table
---@param ns? integer highlight namespace
function M.set_hl(name, val, ns)
    vim.api.nvim_set_hl(ns and ns or 0, name, val)
end

---Set highlight from groups table
---@param groups table
---@param ns? integer namespace
function M.set_hl_groups(groups, ns)
    for n, v in pairs(groups) do
        M.set_hl(n, v, ns)
    end
end

return M
