return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {}, -- Python
        clangd = {}, -- C/C++
        bashls = {}, -- Bash
        tsserver = {}, -- JS/TS

        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "svelte",
            "vue",
          },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  "tw`([^`]*)",
                  "tw\\(([^)]*)\\)",
                  "twMerge\\(([^)]*)",
                },
              },
            },
          },
        },
      },

      diagnostics = {
        virtual_text = true,
        update_in_insert = true,
        underline = true,
        severity_sort = true,
      },
    },
  },
}
