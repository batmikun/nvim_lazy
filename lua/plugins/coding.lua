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
        { ocaml = { "ocamlformat" } },
      })
    end,
  },
  {
    "mfussenegger/nvim_lint.nvim",
    optional = true,
    opts = function(_, opts)
      vim.list_extend(opts.linters_by_ft, {})
    end,
  },
}
