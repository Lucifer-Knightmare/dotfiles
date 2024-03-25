return {
	"nvim-neorg/neorg",
	-- build = ":Neorg sync-parsers",
	-- lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
	lazy = true, -- enable lazy load
	ft = "norg", -- lazy load on file type
	cmd = "Neorg", -- lazy load on command
	dependencies = { "nvim-lua/plenary.nvim", "folke/zen-mode.nvim", "luarocks.nvim" },
	config = function()
		require("neorg").setup({
			-- tag = "*",
			-- configuration here
			load = {
				["core.defaults"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							work = "~/Notes/Work",
							home = "~/Notes/Home",
							masters = "~/Notes/Masters",
							personal_research = "~/Notes/Personal_Research",
              learning = "~/Notes/Learning",
							scratch = "~/Notes/Scratch",
						},
						default_workspace = "scratch",
					},
				},
				["core.concealer"] = {
					config = {
						folds = false,
						-- icon_present = "basic",
					},
				},
				["core.integrations.image"] = {},
				["core.latex.renderer"] = {},
				["core.integrations.treesitter"] = {},
				["core.mode"] = {},
				["core.queries.native"] = {},
				["core.ui"] = {},
				["core.presenter"] = {
					config = { zen_mode = "zen-mode" },
				},
				["core.tempus"] = {},
				-- ["core.journal"] = {},
				["core.summary"] = {},
				["core.export"] = {},
				["core.export.markdown"] = {},
			},
		})
	end,
}
