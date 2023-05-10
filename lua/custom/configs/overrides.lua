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
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- bashls
    "bash-language-server",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "eslint-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    -- "clang-format",

    -- python stuff
    "pyright",

    -- go stuff
    "gopls",

    -- shell stuff
    "shfmt",

    -- rust stuff
    "codelldb",
    "rust-analyzer",
    "taplo",
  },
}

-- git support in nvimtree
M.nvimtree = {
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
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
