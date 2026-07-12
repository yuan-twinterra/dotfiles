return {
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" }, -- Modern replacement for vim-devicons

  -- LSP & Completion
  { "neovim/nvim-lspconfig" },
  { "ms-jpq/coq_nvim", branch = "coq" },
  { "ms-jpq/coq.artifacts", branch = "artifacts" },
  { "mfussenegger/nvim-dap" },

  -- Telescope & Search
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  -- Treesitter & UI
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter').setup({
        ensure_installed = {"lua", "markdown", "markdown_inline", "go", "python", "javascript", "typescript", "tsx" },
      })
    end
  },

  { "echasnovski/mini.indentscope", version = "*" },
  { "nvim-lualine/lualine.nvim" },
  { "preservim/nerdtree" },
  { "tiagofumo/vim-nerdtree-syntax-highlight" },

  -- Themes
  {
    "cqnkxy/ghostty.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd('colorscheme ghostty')
    end
  },
}
