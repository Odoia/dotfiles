local ls = require "luasnip"
local s = ls.snippet
local f = ls.function_node
local p = require("luasnip.extras").partial

local function bash(_, snip)
  local file = io.popen(snip.trigger, "r")
  local res = {}
  for line in file:lines() do
    table.insert(res, line)
  end
  return res
end

local snippets = {
  s({ trig = "ymd", name = "Current date", dscr = "Insert the current date" }, {
    p(os.date, "%Y-%m-%d"),
  }),

  s({ trig = "pwd" }, { f(bash, {}) }),
}

return snippets
