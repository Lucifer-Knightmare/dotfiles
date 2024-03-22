-- return {
--    "jybuki/nabla.nvim"
-- }

return {
  "jbyuki/nabla.nvim",
  lazy = true,
  -- ft = ["md", "norg", "tex"],
  ft = {"md", "norg", "tex"},
  keys = {
    {
      "<leader>nl",
      function()
        require("nabla").popup()
      end,
      desc = "Notation",
    },
  },
  config = function()
    require("nabla").enable_virt({
      autogen = true,
      silent = true,
    })
  end,
}
