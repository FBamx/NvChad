---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-a>"] = { "ggvG", "select all" },
    ["<leader>qq"] = { "<cmd> qa<CR>", "Quit all" },
    ["<A-j>"] = { "<cmd>m .+1<cr>==", "Move down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", "Move up" },
  },
  i = {
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", "Move down" },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", "Move up" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", "Move down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", "Move up" },
  },
}

M.tmuxNavigator = {
  plugin = true,
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "tmux h" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "tmux l" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "tmux j" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "tmux k" },
  },
}

M.SymbolOutline = {
  -- plugin = true,
  n = {
    ["<leader>cs"] = { "<cmd> SymbolsOutline<CR>", "open SymbolOutline" },
  },
}

M.Lazy = {
  n = {
    ["<leader>la"] = { "<cmd> Lazy<CR>", "lazy" },
    ["<leader>ls"] = { "<cmd> LspInfo<CR>", "lazy" },
    ["<leader>ma"] = { "<cmd> Mason<CR>", "lazy" },
  },
}

M.Mason = {
  n = {
    ["<leader>ma"] = { "<cmd> Mason<CR>", "lazy" },
  },
}

M.LazyGit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "LazyGit" },
  },
}

M.Git = {
  n = {
    ["<leader>rh"] = { ":lua require 'gitsigns'.reset_hunk()<CR>", "git reset" },
    ["<leader>ph"] = { ":lua require 'gitsigns'.preview_hunk()<CR>", "git preview" },
    ["<leader>gb"] = { ":lua package.loaded.gitsigns.blame_line()<CR>", "git blame_line" },
    ["<leader>td"] = { ":lua require 'gitsigns'.toggle_deleted()<CR>", "git toggle_delete" },
  },
}

M.format = {
  n = {
    ["<leader>uf"] = { require("custom.configs.format").toggle, "toggle format" },
  },
}

return M
