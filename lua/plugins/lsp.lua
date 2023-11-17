return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "luacheck",
        "black",
        "selene",
        "shellcheck",
        "shfmt",
        "ocamlformat",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        cssls = {},
        zls = {},
        ols = {},
        ocamllsp = {},
        nim_langserver = {},
      },
    },
  },
}
