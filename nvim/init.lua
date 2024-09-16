local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.foldlevel = 99

vim.api.nvim_set_keymap("n", "b", ":foldopen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "B", ":foldclose<CR>", { noremap = true, silent = true })

require("vim-options")
require("lazy").setup("plugins")
