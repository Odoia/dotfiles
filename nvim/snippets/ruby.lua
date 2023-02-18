local luasnip = require 'luasnip'
-- some shorthands...
local snip = luasnip.snippet
--local node = luasnip.snippet_node
local text = luasnip.text_node
--local insert = luasnip.insert_node
--local func = luasnip.function_node
--local choice = luasnip.choice_node
--local dynamicn = luasnip.dynamic_node
--luasnip.filetype_extend("ruby", {"rails"})

require("luasnip.loaders.from_vscode").lazy_load()

luasnip.add_snippets(nil, {
	all = {
		snip({
			trig = "pry",
			namr = "Pry",
			dscr = "Add require 'pry'; binding.pry",
		}, {
			text("require 'pry'; binding.pry"),
		}),
	},
})
