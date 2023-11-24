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
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = false,
        severity_sort = true,
      },
      inlay_hints = {
        enabled = true,
      },
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
