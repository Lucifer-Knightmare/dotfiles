-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


--Providers
local enable_providers = {
	"python3_provider",
	"node_provider",
	-- and so on
	"perl_provider",
	"ruby_provider",
}

for _, plugin in pairs(enable_providers) do
	vim.g["loaded_" .. plugin] = nil
	vim.cmd("runtime " .. plugin)
end

-- Avoid Duplicative Messages in Lazy.nvim
vim.api.nvim_create_autocmd("WinEnter", {
    callback = function()
        local floating = vim.api.nvim_win_get_config(0).relative ~= ""
        vim.diagnostic.config({
            virtual_text = floating,
            virtual_lines = not floating,
        })
    end,
})
