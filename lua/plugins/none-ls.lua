return {
  "nvimtools/none-ls.nvim",
  dependencies = {
   "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua, --Lua
        null_ls.builtins.formatting.prettier, --WEB
       -- null_ls.builtins.diagnostics.eslint,
       -- null_ls.builtins.code_actions.eslint,
      --null_ls.builtins.formatting.eslint,
       require("none-ls.diagnostics.eslint_d"),
       require("none-ls.code_actions.eslint_d"),
        null_ls.builtins.formatting.clang_format,
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
