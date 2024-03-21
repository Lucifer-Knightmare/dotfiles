return {
  "hrsh7th/nvim-cmp",
  opts = {
    sources = {
      -- { name = "codeium", group_index = 1, priority = 100, },
      { name = "codeium" },
      { name = "cmp_tabnine" },
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
    },
    completion = { autocomplete = false },
  },
  dependencies = {
    {
      "tzachar/cmp-tabnine",
      build = "./install.sh",
      config = function()
        local tabnine = require "cmp_tabnine.config"
        tabnine:setup {
          max_lines = 1000,
          max_num_results = 10,
          sort = true,
          run_on_every_keystroke = true,
        } -- put your options here
      end,
    },
    {
      "Exafunction/codeium.nvim",
      cmd = "Codeium",
      build = ":Codeium Auth",
      opts = {},
    },
  },
}
