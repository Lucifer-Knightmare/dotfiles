local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers =
	{ "html", "cssls", "tsserver", "clangd", "rust_analyzer", "julials", "texlab", "pylsp", "matlab_ls" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Put it here???
vim.diagnostic.config({
	virtual_text = false,
})

vim.diagnostic.config({ virtual_lines = true })


-- Another one?
-- Not Here...
-- vim.api.nvim_create_autocmd("WinEnter", {
--     callback = function()
--         local floating = vim.api.nvim_win_get_config(0).relative ~= ""
--         vim.diagnostic.config({
--             virtual_text = floating,
--             virtual_lines = not floating,
--         })
--     end,
-- })

-- lspconfig.pyright.setup { blabla}
