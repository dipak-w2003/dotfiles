-- ~/.config/nvim/lua/plugins/none-ls.lua

return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts.sources = vim.list_extend(opts.sources or {}, {
      null_ls.builtins.formatting.prettierd.with({
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "html",
          "css",
          "scss",
          "json",
          "jsonc",
          "yaml",
          "markdown",
          "toml",
          "ini",
        },
      }),
    })
  end,
}
