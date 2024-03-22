return {
	-- see the image.nvim readme for more information about configuring this plugin
	"3rd/image.nvim",
	config = function()
		package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
		package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
		require("image").setup()
	end,
	opts = {
		backend = "kitty", -- whatever backend you would like to use
		-- backend = "ueberzug" -- another backend
		-- max_width = 100,
		max_width = nil,
		-- max_height = 12,
		max_height = nil,
		max_height_window_percentage = math.huge,
		-- max_height_window_percentage = nil,
		-- max_width_window_percentage = math.huge,
		max_width_window_percentage = nil,
		window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
		window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
		-- hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" }, -- render image files as images when opened
		integrations = {
			neorg = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true,
				only_render_image_at_cursor = false,
				filetypes = { "norg" },
			},

			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true,
				only_render_image_at_cursor = false,
				filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
			},
		},
	},
}
