-- Caminho para o lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable", -- última versão estável
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.rtp:append("~/.config/nvim/lua/")

require("vim-options")

-- Carregar os plugins
require("lazy").setup({ { import = "plugins" } })

