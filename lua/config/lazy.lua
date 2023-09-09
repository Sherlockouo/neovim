local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },
    { import = "lazyvim.plugins.extras.coding.copilot" },
    -- import/override with your plugins
    { import = "plugins" },
    { import = "plugins.appearence.colorscheme" },
    -- { import = "plugins.init" },
    -- { import = "plugins.lsp.keymaps" },
    -- { import = "plugins.lsp.format" },
    { import = "plugins.extras.vscode" },
    { import = "plugins.extras.linting.eslint" },
    { import = "plugins.extras.ui.mini-starter" },
    { import = "plugins.extras.ui.mini-animate" },
    { import = "plugins.extras.ui.ui" },
    { import = "plugins.extras.ui.edgy" },
    { import = "plugins.extras.test.core" },
    { import = "plugins.extras.util.project" },
    { import = "plugins.extras.util.mini-hipatterns" },
    { import = "plugins.extras.lang.tex" },
    { import = "plugins.extras.lang.docker" },
    { import = "plugins.extras.lang.python" },
    { import = "plugins.extras.lang.ruby" },
    { import = "plugins.extras.lang.json" },
    { import = "plugins.extras.lang.tailwind" },
    { import = "plugins.extras.lang.java" },
    { import = "plugins.extras.lang.rust" },
    { import = "plugins.extras.lang.clangd" },
    { import = "plugins.extras.lang.go" },
    { import = "plugins.extras.lang.cmake" },
    { import = "plugins.extras.lang.yaml" },
    { import = "plugins.extras.lang.python-semshi" },
    { import = "plugins.extras.lang.typescript" },
    { import = "plugins.extras.lang.terraform" },
    { import = "plugins.extras.lang.elixir" },
    { import = "plugins.extras.formatting.tree-sitter" },
    { import = "plugins.extras.formatting.prettier" },
    { import = "plugins.extras.coding.copilot" },
    { import = "plugins.extras.coding.yanky" },
    { import = "plugins.extras.coding.coding" },
    { import = "plugins.extras.dap.nlua" },
    { import = "plugins.extras.dap.core" },
    -- { import = "plugins.extras.editor.flash" },
    { import = "plugins.extras.editor.editor" },
    { import = "plugins.extras.editor.leap" },
    { import = "plugins.extras.editor.mini-files" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
