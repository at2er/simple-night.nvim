local M = {}

---@class simple-night.test.class
local test_class = {
    TestField = "TestString"
}

---some comment...
---@param opts simple-night.test.class
---@return boolean opts exit code.
local function test_func(opts)
    return true
end

---@param config simple-night.test.class
function M.setup(config)
    test_class.TestFeild = "Hello!"

    for key, value in pairs(test_class) do
        print("k: ", key, "v: ", value)
    end

    local a = 0
    local b = 114.514
    local c = test_func(config)

    if c == true then
        print(a, b); print("Hi!")
    end
end

return M
