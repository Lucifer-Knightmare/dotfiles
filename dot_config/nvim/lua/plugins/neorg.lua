return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	-- lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
	lazy = true, -- enable lazy load
	ft = "norg", -- lazy load on file type
	cmd = "Neorg", -- lazy load on command
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neorg").setup({
			-- tag = "*",
			-- configuration here
			load = {
				["core.defaults"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							work = "~/notes/work",
							home = "~/notes/home",
							masters = "~/notes/masters",
							personal_research = "~/notes/personal_research",
						},
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
			},
		})
	end,
}
