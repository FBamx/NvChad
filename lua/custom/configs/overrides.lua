local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "comment",
    "diff",
    "dockerfile",
    "dot",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "mermaid",
    "python",
    "regex",
    "vim",
    "yaml",
    "cpp",
    "go",
    "gomod",
    "gosum",
    "rust",
    "toml",
    "ron",
    "css",
    "html",
    "java",
    "javascript",
    "typescript",
    "jsdoc",
    "scss",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "bash-language-server",
    "css-lsp",
    "html-lsp",
    "eslint-lsp",
    "typescript-language-server",
    "prettier",
    "clangd",
    "pyright",
    "gopls",
    "shfmt",
    "codelldb",
    "rust-analyzer",
    "taplo",
    "yaml-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  respect_buf_cwd = true,
  sync_root_with_cwd = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    update_root = true,
  },
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
