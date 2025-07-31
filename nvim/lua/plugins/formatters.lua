return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")

    opts.sources = vim.list_extend(opts.sources or {}, {
      -- 🌐 Frontend
      null_ls.builtins.formatting.prettier.with({
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
      null_ls.builtins.diagnostics.eslint.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc", ".eslintrc.js", ".eslintrc.json" })
        end,
      }),

      -- 🐍 Python
      null_ls.builtins.formatting.black,
      null_ls.builtins.diagnostics.flake8,

      -- 🐚 Bash / Shell
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.diagnostics.shellcheck,

      -- ⚙️ Lua
      null_ls.builtins.formatting.stylua, -- Requires stylua installed

      -- 💻 C / C++
      null_ls.builtins.formatting.clang_format.with({
        filetypes = { "c", "cpp", "objc", "objcpp" },
      }),
      null_ls.builtins.diagnostics.clang_check.with({
        filetypes = { "c", "cpp" },
      }),

      -- 📜 Markdown & Docs
      null_ls.builtins.diagnostics.write_good.with({
        filetypes = { "markdown", "text", "rst" },
      }),

      -- 📝 Git commit messages
      null_ls.builtins.diagnostics.commitlint.with({
        condition = function(utils)
          return utils.root_has_file({ "commitlint.config.js" })
        end,
      }),
    })
  end,
}
