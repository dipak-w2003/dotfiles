return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- LSP servers setup
      servers = {
        pyright = {}, -- Python
        clangd = {}, -- C/C++
        bashls = {}, -- Bash
        tsserver = {}, -- JS/TS
      },

      -- Diagnostics configuration
      diagnostics = {
        virtual_text = true,
        update_in_insert = true, -- ✅ Show errors while typing
        underline = true,
        severity_sort = true,
      },
    },
  },
}
