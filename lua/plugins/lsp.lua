return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "luacheck",
        "black",
        "flake8",
        "selene",
        "shellcheck",
        "shfmt",
        "ocamlformat",
        "rustfmt",
        "eslint_d",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    dependencies = {
      "hinell/lsp-timeout.nvim",
    },
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          severity = nil,
          source = false,
          format = nil,
        },
        severity_sort = true,
        float = {
          show_header = true,
          border = "rounded",
          source = false,
          format = function(d)
            if not d.code and not d.user_data then
              return d.message
            end

            local t = vim.deepcopy(d)
            local code = d.code
            if not code then
              if not d.user_data.lsp then
                return d.message
              end

              code = d.user_data.lsp.code
            end
            if code then
              t.message = string.format("%s [%s]", t.message, code):gsub("1. ", "")
            end
            return t.message
          end,
        },
      },
      inlay_hints = {
        enabled = false,
      },
      servers = {
        cssls = {},
        zls = {},
        ols = {
          command = "ols",
          filetypes = { "odin" },
          rootPatterns = { "ols.json" },
        },
        ocamllsp = {},
      },
    },
  },
  {
    "stevanmilic/nvim-lspimport",
    ft = { "py" },
  },
}
