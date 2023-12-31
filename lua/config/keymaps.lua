local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Quick Exit
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "kj", "<Esc>")

-- Increment / Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "tc", ":tabclose<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- term
keymap.set("n", "<leader>te", ":split | resize 20 | term<CR>", opts)

-- Split window
keymap.set("n", "zs", ":split<Return>", opts)
keymap.set("n", "zv", ":vsplit<Return>", opts)

-- Open Float
keymap.set("n", "gl", vim.diagnostic.open_float, opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end)
