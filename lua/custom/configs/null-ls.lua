local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.formatting.prettier, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- shell
  b.formatting.shfmt,

  -- python
  b.formatting.black,

  -- cpp
  -- b.formatting.clang,
}

null_ls.setup {
  root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
  debug = true,
  sources = sources,
}
