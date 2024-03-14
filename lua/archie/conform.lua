require("conform").setup({
  formatters_by_ft = {
    cpp = { "clang-format" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

-- clang-format -style=google -dump-config > .clang-format
