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
