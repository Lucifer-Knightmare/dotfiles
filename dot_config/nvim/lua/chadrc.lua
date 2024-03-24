---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "ayu_dark",

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
