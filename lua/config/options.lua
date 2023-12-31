vim.opt.mouse = ""
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.fileencoding = "utf-8"
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.colorcolumn = "95"
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd("highlight WinSeparator guibg=None")
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])
vim.cmd("set path+=**")
