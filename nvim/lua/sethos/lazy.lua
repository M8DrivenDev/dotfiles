-- Set up lazy.nvim
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

-- Disable Perl provider to remove the resourcing message
vim.g.loaded_perl_provider = 0

-- Set up lazy.nvim with reduced notifications
require("lazy").setup({
  { import = "sethos.plugins" },
  { import = "sethos.plugins.lsp" }
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  ui = {
    notifications = {
      enabled = false,
    },
  },
  noautocmd = true,
})

-- Set LSP log level to error only
vim.lsp.set_log_level("error")
