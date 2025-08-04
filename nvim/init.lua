-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Enable transparency automatically on Vim enter
vim.cmd([[autocmd VimEnter * TransparentEnable]])
