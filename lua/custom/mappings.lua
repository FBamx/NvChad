---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-a>"] = { "ggvG", "select all" },
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
    ["<leader>tb"] = { "<cmd> SymbolsOutline<CR>", "open SymbolOutline" },
  },
}

M.Lazy = {
  n = {
    ["<leader>la"] = { "<cmd> Lazy<CR>", "lazy" },
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

-- more keybinds!

return M
