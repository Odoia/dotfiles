local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.rubocop,
	formatting.eslint,
	formatting.autopep8,
	formatting.stylua,
	formatting.clang_format,
	-- formatting.prettier,
	-- formatting.latexindent,
}

null_ls.setup({
	sources = sources,

	on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format { asyc = true }")
		end
	end,
})
