---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "material-darker",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
}

return M
