return {
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
    keys = {
      {
        "<leader>rn",
        ":IncRename ",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      vim.list_extend(opts.formatters_by_ft, {
        {
          ocaml = { "ocamlformat" },
          python = { "black" },
          rust = { "rustfmt" },
          javascript = { "eslint_d" },
          typescript = { "eslint_d" },
          javascriptreact = { "eslint_d" },
          typescriptreact = { "eslint_d" },
          svelte = { "eslint_d" },
          go = { "gofmt" },
          zig = { "zigfmt" },
        },
      })
    end,
  },
  {
    "mfussenegger/nvim_lint.nvim",
    optional = true,
    opts = {
      events = { "BufWritePost" },
      linters_by_ft = {
        lua = { "luacheck" },
        python = { "flake8" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        svelte = { "eslint_d" },
      },
    },
  },
}
