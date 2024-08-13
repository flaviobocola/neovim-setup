return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        require("null-ls").builtins.formatting.clang_format.with({
          extra_args = { "--style={BasedOnStyle: LLVM, IndentWidth: 2, ColumnWidth: 150}"}
        }),
        null_ls.builtins.formatting.stylua.with({ extra_args = { "--column-width", "150"}}),
        null_ls.builtins.formatting.black.with({ extra_args = { "--line-length", "150"}}),
        null_ls.builtins.formatting.isort.with({ extra_args = { "--line-length", "150"}}),
        null_ls.builtins.formatting.prettier.with({ extra_args = { "--print-width", "150"}}),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
