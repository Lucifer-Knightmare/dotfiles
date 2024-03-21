return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  keys = {
    {
      "<Leader>uD",
      function()
        vim.diagnostic.config {
          virtual_text = not require("lsp_lines").toggle(),
        }
      end,
      desc = "Toggle virtual diagnostic lines",
    },
  },
  opts = {},
  config = function(_, opts)
    -- disable diagnostic virtual text
    -- Unusable in NvChad
    --
    -- local lsp_utils = require "configs.lspconfig"
    -- lsp_utils.diagnostics[3].virtual_text = false
    -- vim.diagnostic.config(lsp_utils.diagnostics[vim.g.diagnostics_mode])
    --
    -- This might work for NvChad...

    vim.diagnostic.config { virtual_text = false }
    vim.diagnostic.config { virtual_lines = true }

    vim.api.nvim_create_autocmd("WinEnter", {
      callback = function()
        local floating = vim.api.nvim_win_get_config(0).relative ~= ""
        vim.diagnostic.config {
          virtual_text = floating,
          virtual_lines = not floating,
        }
      end,
    })

    require("lsp_lines").setup(opts)
  end,
}
