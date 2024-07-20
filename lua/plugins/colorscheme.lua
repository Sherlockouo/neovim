return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  --- 有点黑,neotree 是绿色的... 代码偏黄
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
  -- 黄黄的，传说护眼...
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      style = "dark",
    },
  },
  -- 黑不溜秋的配色，有点生硬
  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    priority = 1000, -- Ensure it loads first
  },

  -- 不太好看
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
  },

  -- 有点淡，饱和度不够
  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
      -- colorscheme = "tokyodark",
      -- colorscheme = "gruvbox",
      -- colorscheme = "onedark",
      -- colorscheme ="nightfox",
      -- colorscheme = "catppuccin",
    },
  },
}
