return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
        "clang-format",
        "pyright",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "c",
        "typescript",
        "javascript",
      },
    },
    {
      "mfussenegger/nvim-lint",
      event = "VeryLazy",
      config = function()
        require "configs.lint"
      end,
    },
    {
      "ggandor/leap.nvim",
      lazy = false,
      config = function()
        require("leap").add_default_mappings(true)
      end,
    },
    {
      "folke/trouble.nvim",
      lazy = false,
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      lazy = false,
      config = function()
        require("todo-comments").setup()
      end,
    },
    -- {
    --   "Exafunction/codeium.vim",
    --   lazy = false,
    -- },
    {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      opts = function()
        return require "configs.null-ls"
      end,
    },
  },
}
