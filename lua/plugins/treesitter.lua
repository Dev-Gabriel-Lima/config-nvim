return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {"lua", "cpp", "javascript", "html", "css", "c"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
  init = function()
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.install").compilers = { "gcc", "clang" }
    require("nvim-treesitter.install").parser_install_dir = vim.fn.stdpath("data") .. "/parsers"
    vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/parsers")
  end,
}
