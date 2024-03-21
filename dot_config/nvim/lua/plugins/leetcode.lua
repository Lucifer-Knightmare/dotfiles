local leet_arg = "leetcode.nvim"
return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  -- local leet_arg = "leetcode.nvim",
  lazy = leet_arg ~= vim.fn.argv()[1],
  opts = {
    -- configuration goes here
    arg = leet_arg,
    lang = "python3",
    cn = {
      enabled = false,
      translator = false,
      translate_problems = false,
    },
    cache = { update_interval = 60 * 60 },
    image_support = true,
    -- image_support = false,
  },
  -- lazy = false,
  keys = {
    { "<leader>Lq", mode = { "n" }, "<cmd>Leet tabs<cr>" },
    { "<leader>Lm", mode = { "n" }, "<cmd>Leet menu<cr>" },
    { "<leader>Lc", mode = { "n" }, "<cmd>Leet console<cr>" },
    { "<leader>Lh", mode = { "n" }, "<cmd>Leet info<cr>" },
    { "<leader>Ll", mode = { "n" }, "<cmd>Leet lang<cr>" },
    { "<leader>Ld", mode = { "n" }, "<cmd>Leet desc<cr>" },
    { "<leader>Lr", mode = { "n" }, "<cmd>Leet run<cr>" },
    { "<leader>Ls", mode = { "n" }, "<cmd>Leet submit<cr>" },
  },
}
