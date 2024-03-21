return {
  "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git",
  branch = "master",
  lazy = false,
  config = function()
    require("rainbow-delimiters.setup").setup {
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
        latex = "rainbow-blocks",
      },
    }
  end,
}
